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
 * OptimizedGhostEntity - FPS optimized ghost for 8GB RAM
 * Transparent, phases through walls, minimal tick
 */
public class OptimizedGhostEntity extends Monster {
    private int cooldown = 0;
    private int fadeTicks = 0;

    public OptimizedGhostEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 28.0)
            .add(Attributes.MOVEMENT_SPEED, 0.32)
            .add(Attributes.ATTACK_DAMAGE, 4.5)
            .add(Attributes.FOLLOW_RANGE, 28.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.2, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.7));
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
            fadeTicks++;

            if (!ChunkHorrorManager.canSpawnInChunk(level(), blockPosition()) && fadeTicks % 100 == 0) {
                if (distanceToSqr(getX(), getY(), getZ()) > 4096) { discard(); return; }
            }

            // Invisibility phases for ghost effect - throttled
            if (fadeTicks % 60 == 0) {
                if (getRandom().nextFloat() < 0.3) {
                    addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 40, 0, false, false, false));
                }
            }

            if (getTarget() instanceof Player player) {
                if (!CrashPreventionUtil.isValidPlayer(player)) return;
                double dist = distanceTo(player);
                if (dist > NovaHorrorConfig.ENTITY_AI_THROTTLE_DISTANCE) return;

                if (dist < 2.0 && cooldown == 0) {
                    player.hurt(level().damageSources().mobAttack(this), 4.5F);
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 30, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0, false, false, false));
                    SafeScoreboardUtil.addFear(player, 3);
                    cooldown = 70;
                }

                if (dist < 12 && fadeTicks % 80 == 0 && ParticleOptimizer.canSpawnParticle(player)) {
                    level().addParticle(ParticleTypes.SOUL, getX(), getY()+1, getZ(), 0, 0.02, 0);
                }
            }
        } catch (Exception e) {}
    }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
