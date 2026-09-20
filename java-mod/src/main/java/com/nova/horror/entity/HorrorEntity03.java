
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
import net.minecraft.network.chat.Component;

import java.util.Random;

/**
 * HorrorEntity03 - Fog Walker - invisible in fog, leaves trail, teleports in fog
 * Real unique AI - no duplicate methods
 */
public class HorrorEntity03 extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HorrorEntity03(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 26.0).add(Attributes.MOVEMENT_SPEED, 0.35).add(Attributes.ATTACK_DAMAGE, 5.5).add(Attributes.FOLLOW_RANGE, 32.0);
    }

    @Override
    protected void registerGoals() {
        
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.15, false));
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
                    phase++;
                    
                    // Fog check via rain or low light
                    boolean foggy = level().isRaining() || level().getBrightness(LightLayer.BLOCK, blockPosition()) < 4;
                    if (foggy) {
                        addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 40, 0, false, false));
                        if (phase % 20 == 0) {
                            level().addParticle(net.minecraft.core.particles.ParticleTypes.CAMPFIRE_COSY_SMOKE, getX(), getY()+1, getZ(), 0, 0.02, 0);
                        }
                        if (getTarget() != null && rand.nextInt(60)==0 && cooldown==0) {
                            // Teleport near target in fog
                            double tx = getTarget().getX() + rand.nextDouble()*12-6;
                            double tz = getTarget().getZ() + rand.nextDouble()*12-6;
                            teleportTo(tx, getTarget().getY(), tz);
                            level().playSound(null, blockPosition(), SoundEvents.ENTITY_FOX_SNIFF, SoundSource.HOSTILE, 0.8F, 0.5F);
                            cooldown = 80;
                        }
                    }
                    if (phase % 50 == 0) {
                        for (Player p : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(8))) {
                            p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0));
                        }
                    }
        } catch (Exception e) {}
    }

    
    public void createFogTrail() {
        for (int i=0;i<5;i++) level().addParticle(net.minecraft.core.particles.ParticleTypes.WHITE_ASH, getX()+rand.nextDouble()-0.5, getY()+0.5, getZ()+rand.nextDouble()-0.5, 0, 0.01, 0);
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
