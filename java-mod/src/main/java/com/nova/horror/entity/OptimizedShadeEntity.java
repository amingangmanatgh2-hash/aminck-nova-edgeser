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
import net.minecraft.core.BlockPos;

/**
 * OptimizedShadeEntity - FPS boost version for 8GB RAM
 * Uses ChunkHorrorManager, distance culling, safe checks, no memory leak
 */
public class OptimizedShadeEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;

    public OptimizedShadeEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 35.0)
            .add(Attributes.MOVEMENT_SPEED, 0.28)
            .add(Attributes.ATTACK_DAMAGE, 5.0)
            .add(Attributes.FOLLOW_RANGE, 32.0)
            .add(Attributes.KNOCKBACK_RESISTANCE, 0.8);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.1, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.6));
        goalSelector.addGoal(3, new LookAtPlayerGoal(this, Player.class, 8.0F));
        targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        try {
            if (level().isClientSide) return;
            if (EntityCullingSystem.shouldSkipTick(this)) return;
            if (this.isDeadOrDying()) return;
            if (!CrashPreventionUtil.isValidEntity(this)) return;

            if (cooldown > 0) cooldown--;
            phase++;

            // Chunk limit check
            if (!ChunkHorrorManager.canSpawnInChunk(level(), blockPosition()) && phase % 100 == 0) {
                if (distanceToSqr(getX(), getY(), getZ()) > 4096) {
                    discard();
                    return;
                }
            }

            if (getTarget() instanceof Player player) {
                if (!CrashPreventionUtil.isValidPlayer(player)) return;
                double dist = distanceTo(player);
                if (dist > NovaHorrorConfig.ENTITY_DESPAWN_DISTANCE) {
                    if (phase % 200 == 0) getNavigation().stop();
                    return;
                }
                if (dist < 2.0 && cooldown == 0) {
                    player.hurt(level().damageSources().mobAttack(this), 5.0F);
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0, false, false, false));
                    SafeScoreboardUtil.addFear(player, 3);
                    level().playSound(null, blockPosition(), SoundEvents.ENTITY_WARDEN_AMBIENT, net.minecraft.sounds.SoundSource.HOSTILE, 0.6F, 0.7F);
                    cooldown = 80;
                }
                // Teleport behind only if close and not watched
                if (dist > 8 && dist < 20 && cooldown == 0 && getRandom().nextInt(120) == 0) {
                    if (!player.hasLineOfSight(this)) {
                        double yaw = Math.toRadians(player.getYRot());
                        double bx = player.getX() - Math.sin(yaw) * 2.0;
                        double bz = player.getZ() + Math.cos(yaw) * 2.0;
                        BlockPos bp = new BlockPos((int)bx, (int)player.getY(), (int)bz);
                        if (CrashPreventionUtil.isSafeToSpawn(level(), bp)) {
                            teleportTo(bx, player.getY(), bz);
                            cooldown = 150;
                        }
                    }
                }
            }

            if (phase % 200 == 0) {
                ChunkHorrorManager.cleanupOldChunks();
            }
        } catch (Exception e) {}
    }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
