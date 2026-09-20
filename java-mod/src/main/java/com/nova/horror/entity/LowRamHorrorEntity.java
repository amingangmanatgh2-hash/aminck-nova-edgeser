package com.nova.horror.entity;

import com.nova.horror.performance.EntityCullingSystem;
import com.nova.horror.config.NovaHorrorConfig;
import com.nova.horror.util.SafeScoreboardUtil;
import com.nova.horror.world.ChunkHorrorManager;
import com.nova.horror.util.CrashPreventionUtil;
import com.nova.horror.performance.ParticleOptimizer;
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
import net.minecraft.core.particles.ParticleTypes;

/**
 * LowRamHorrorEntity - designed for 8GB RAM from ground up
 * Minimal particle, throttled AI, chunk limited, safe
 */
public class LowRamHorrorEntity extends Monster {
    private int attackCooldown = 0;
    private int particleCooldown = 0;

    public LowRamHorrorEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 30.0)
            .add(Attributes.MOVEMENT_SPEED, 0.25)
            .add(Attributes.ATTACK_DAMAGE, 4.0)
            .add(Attributes.FOLLOW_RANGE, 24.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.0, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.5));
        targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        try {
            if (level().isClientSide) return;
            if (EntityCullingSystem.shouldSkipTick(this)) return;
            if (this.isDeadOrDying()) return;

            if (attackCooldown > 0) attackCooldown--;
            if (particleCooldown > 0) particleCooldown--;

            if (!ChunkHorrorManager.canSpawnInChunk(level(), blockPosition())) {
                if (getRandom().nextInt(100) == 0 && distanceToSqr(getX(), getY(), getZ()) > 3600) {
                    discard();
                    return;
                }
            }

            if (getTarget() instanceof Player player) {
                if (!CrashPreventionUtil.isValidPlayer(player)) return;
                double dist = distanceTo(player);
                if (dist > NovaHorrorConfig.ENTITY_AI_THROTTLE_DISTANCE) return;

                if (dist < 2.2 && attackCooldown == 0) {
                    player.hurt(level().damageSources().mobAttack(this), 4.0F);
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0, false, false, false));
                    SafeScoreboardUtil.addFear(player, 2);
                    attackCooldown = 60;
                }

                // Minimal particles for FPS - only if very close
                if (dist < 10 && particleCooldown == 0 && ParticleOptimizer.canSpawnParticle(player)) {
                    ParticleOptimizer.safeParticle(level(), ParticleTypes.SMOKE, getX(), getY()+1, getZ(), 0, 0.01, 0, player);
                    particleCooldown = 40;
                }
            }
        } catch (Exception e) {}
    }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
