package com.nova.horror.entity;

import com.nova.horror.performance.EntityCullingSystem;
import com.nova.horror.config.NovaHorrorConfig;
import com.nova.horror.util.SafeScoreboardUtil;
import com.nova.horror.world.ChunkHorrorManager;
import com.nova.horror.util.CrashPreventionUtil;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.*;
import net.minecraft.world.entity.ai.goal.target.NearestAttackableTargetGoal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundEvent;

/**
 * LowRamWraithEntity - ultra low RAM wraith, no particles, simple AI
 */
public class LowRamWraithEntity extends Monster {
    private int cooldown = 0;

    public LowRamWraithEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 25.0)
            .add(Attributes.MOVEMENT_SPEED, 0.35)
            .add(Attributes.ATTACK_DAMAGE, 3.5)
            .add(Attributes.FOLLOW_RANGE, 20.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.3, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.6));
        targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        try {
            if (level().isClientSide) return;
            if (EntityCullingSystem.shouldSkipTick(this)) return;
            if (this.isDeadOrDying()) return;
            if (cooldown > 0) cooldown--;

            if (!ChunkHorrorManager.canSpawnInChunk(level(), blockPosition())) {
                if (tickCount % 100 == 0 && distanceToSqr(getX(), getY(), getZ()) > 3600) { discard(); return; }
            }

            if (getTarget() instanceof Player player) {
                if (!CrashPreventionUtil.isValidPlayer(player)) return;
                double dist = distanceTo(player);
                if (dist > NovaHorrorConfig.ENTITY_TICK_DISTANCE) return;

                if (dist < 2.0 && cooldown == 0) {
                    player.hurt(level().damageSources().mobAttack(this), 3.5F);
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 40, 0, false, false, false));
                    SafeScoreboardUtil.addFear(player, 2);
                    cooldown = 50;
                }
                // Teleport behind occasionally - low cost
                if (dist > 10 && dist < 22 && cooldown == 0 && getRandom().nextInt(150) == 0) {
                    if (!player.hasLineOfSight(this)) {
                        double yaw = Math.toRadians(player.getYRot());
                        double bx = player.getX() - Math.sin(yaw) * 2.5;
                        double bz = player.getZ() + Math.cos(yaw) * 2.5;
                        if (CrashPreventionUtil.isSafeToSpawn(level(), new net.minecraft.core.BlockPos((int)bx, (int)player.getY(), (int)bz))) {
                            teleportTo(bx, player.getY(), bz);
                            cooldown = 100;
                        }
                    }
                }
            }
        } catch (Exception e) {}
    }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
