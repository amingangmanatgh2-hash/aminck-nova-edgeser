package com.nova.horror.entity;

import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.*;
import net.minecraft.world.entity.ai.goal.target.NearestAttackableTargetGoal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import com.nova.horror.performance.EntityCullingSystem;
import com.nova.horror.config.NovaHorrorConfig;
import com.nova.horror.util.SafeScoreboardUtil;
import com.nova.horror.performance.MemoryLeakFixer;
import com.nova.horror.performance.ParticleOptimizer;
import com.nova.horror.performance.SoundThrottler;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundSource;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.LightLayer;
import net.minecraft.world.phys.Vec3;
import java.util.*;

public class ShadeEntity extends Monster {
    private int stalkTicks = 0;
    private int teleportCooldown = 0;
    private boolean isStalking = false;

    public ShadeEntity(EntityType<? extends Monster> type, Level level) {
        super(type, level);
    }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 40.0)
            .add(Attributes.MOVEMENT_SPEED, 0.32)
            .add(Attributes.ATTACK_DAMAGE, 6.0)
            .add(Attributes.FOLLOW_RANGE, 40.0)
            .add(Attributes.KNOCKBACK_RESISTANCE, 0.9);
    }

    @Override
    protected void registerGoals() {
        this.goalSelector.addGoal(0, new FloatGoal(this));
        this.goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.15, false) {
            @Override
            public boolean canUse() {
                if (getTarget() instanceof Player p) {
                    int light = level().getBrightness(LightLayer.BLOCK, p.blockPosition());
                    return light < 5 && super.canUse();
                }
                return super.canUse();
            }
        });
        this.goalSelector.addGoal(2, new Goal() {
            private int circleTicks = 0;
            @Override
            public boolean canUse() {
                return getTarget() != null && getTarget() instanceof Player && distanceTo(getTarget()) > 8;
            }
            @Override
            public void tick() {
                if (getTarget() == null) return;
                circleTicks++;
                double angle = circleTicks * 0.05;
                double radius = 12 + Math.sin(circleTicks*0.02)*3;
                double tx = getTarget().getX() + Math.cos(angle)*radius;
                double tz = getTarget().getZ() + Math.sin(angle)*radius;
                getNavigation().moveTo(tx, getTarget().getY(), tz, 0.9);
                isStalking = true;
                if (circleTicks % 100 == 0) {
                    level().playSound(null, blockPosition(), SoundEvents.ENTITY_WARDEN_AMBIENT, SoundSource.HOSTILE, 0.6F, 0.7F);
                }
            }
        });
        this.goalSelector.addGoal(3, new WaterAvoidingRandomStrollGoal(this, 0.7));
        this.goalSelector.addGoal(4, new LookAtPlayerGoal(this, Player.class, 12.0F));
        this.goalSelector.addGoal(5, new RandomLookAroundGoal(this));
        this.targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        try {
            if (level().isClientSide) return;
            if (EntityCullingSystem.shouldSkipTick(this)) return;
            if (this.isDeadOrDying()) return;
            stalkTicks++;
                    if (teleportCooldown > 0) teleportCooldown--;
                    int blockLight = level().getBrightness(LightLayer.BLOCK, blockPosition());
                    if (blockLight > 7) {
                        this.addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 60, 0, false, false));
                    }
                    if (getTarget() instanceof Player player && teleportCooldown == 0) {
                        Vec3 playerLook = player.getLookAngle();
                        Vec3 toShade = new Vec3(getX() - player.getX(), 0, getZ() - player.getZ()).normalize();
                        double dot = playerLook.dot(toShade);
                        boolean playerLookingAway = dot < -0.3;
                        double dist = distanceTo(player);
                        if (dist > 8 && dist < 25 && playerLookingAway && random.nextInt(80) == 0) {
                            double yaw = Math.toRadians(player.getYRot());
                            double behindX = player.getX() - Math.sin(yaw) * 2.5;
                            double behindZ = player.getZ() + Math.cos(yaw) * 2.5;
                            BlockPos behind = new BlockPos((int)behindX, (int)player.getY(), (int)behindZ);
                            if (level().getBlockState(behind).isAir() && level().getBlockState(behind.above()).isAir()) {
                                this.teleportTo(behindX, player.getY(), behindZ);
                                level().playSound(null, behind, SoundEvents.ENTITY_ENDERMAN_TELEPORT, SoundSource.HOSTILE, 0.7F, 0.4F);
                                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0));
                                teleportCooldown = 200;
                            }
                        }
                    }
                    if (stalkTicks % 40 == 0) {
                        for (Player p : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(10))) {
                            p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0, false, false));
                        }
                    }
        } catch (Exception e) {}
    }

    public void performAmbush(Player player) {
        double yaw = Math.toRadians(player.getYRot());
        double frontX = player.getX() + Math.sin(yaw) * 3;
        double frontZ = player.getZ() - Math.cos(yaw) * 3;
        this.teleportTo(frontX, player.getY(), frontZ);
        level().playSound(null, blockPosition(), SoundEvents.ENTITY_WARDEN_ROAR, SoundSource.HOSTILE, 1.0F, 0.5F);
        player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 30, 0));
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0));
        this.addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 100, 0));
        teleportCooldown = 300;
    }

    @Override
    protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override
    protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override
    protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
