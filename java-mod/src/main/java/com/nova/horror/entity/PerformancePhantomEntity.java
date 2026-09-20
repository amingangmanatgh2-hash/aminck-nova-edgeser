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
 * PerformancePhantomEntity - flies, minimal tick, despawns far, for FPS boost
 */
public class PerformancePhantomEntity extends Monster {
    private int cooldown = 0;
    private int floatTicks = 0;

    public PerformancePhantomEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 22.0)
            .add(Attributes.MOVEMENT_SPEED, 0.38)
            .add(Attributes.ATTACK_DAMAGE, 3.0)
            .add(Attributes.FOLLOW_RANGE, 32.0)
            .add(Attributes.FLYING_SPEED, 0.4);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.4, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.8));
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
            floatTicks++;

            setNoGravity(true);

            if (!ChunkHorrorManager.canSpawnInChunk(level(), blockPosition())) {
                if (floatTicks % 80 == 0 && distanceToSqr(getX(), getY(), getZ()) > 4096) { discard(); return; }
            }

            if (getTarget() instanceof Player player) {
                if (!CrashPreventionUtil.isValidPlayer(player)) return;
                double dist = distanceTo(player);
                if (dist > NovaHorrorConfig.ENTITY_AI_THROTTLE_DISTANCE) {
                    setDeltaMovement(getDeltaMovement().add(0, -0.02, 0));
                    return;
                }

                if (dist < 2.0 && cooldown == 0) {
                    player.hurt(level().damageSources().mobAttack(this), 3.0F);
                    player.addEffect(new MobEffectInstance(MobEffects.LEVITATION, 20, 0, false, false, false));
                    SafeScoreboardUtil.addFear(player, 2);
                    cooldown = 60;
                }

                // Float around player
                if (floatTicks % 40 == 0 && dist > 5 && dist < 20) {
                    double angle = floatTicks * 0.1;
                    double tx = player.getX() + Math.cos(angle) * 8;
                    double tz = player.getZ() + Math.sin(angle) * 8;
                    double ty = player.getY() + 2 + Math.sin(floatTicks * 0.05) * 2;
                    getNavigation().moveTo(tx, ty, tz, 1.0);
                }
            }
        } catch (Exception e) {}
    }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
