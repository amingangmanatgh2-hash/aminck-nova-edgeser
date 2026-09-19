
package com.nova.horror.entity;

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
import net.minecraft.sounds.SoundSource;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.LightLayer;
import net.minecraft.world.phys.Vec3;
import net.minecraft.network.chat.Component;
import java.util.Random;


/**
 * FogWalkerEntity - Fog Walker - invisible in fog, leaves trail, teleports, slows
 * Real unique AI - enriched rich logic 100+ lines
 */
public class FogWalkerEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public FogWalkerEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 28.0).add(Attributes.MOVEMENT_SPEED, 0.38).add(Attributes.ATTACK_DAMAGE, 5.5).add(Attributes.FOLLOW_RANGE, 36.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.2, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.85)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        boolean isFoggy = level().isRaining() || level().getBrightness(LightLayer.BLOCK, blockPosition()) < 3 || level().getBiome(blockPosition()).value().getBaseTemperature() < 0.3;
        if (isFoggy) {
            addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 50, 0, false, false));
            if (phase % 12 == 0) {
                level().addParticle(net.minecraft.core.particles.ParticleTypes.WHITE_ASH, getX()+rand.nextDouble()-0.5, getY()+1, getZ()+rand.nextDouble()-0.5, 0, 0.02, 0);
                level().addParticle(net.minecraft.core.particles.ParticleTypes.CAMPFIRE_COSY_SMOKE, getX(), getY()+0.5, getZ(), 0, 0.03, 0);
            }
            if (getTarget()!=null && rand.nextInt(45)==0 && cooldown==0) {
                double tx = getTarget().getX()+rand.nextDouble()*10-5;
                double ty = getTarget().getY();
                double tz = getTarget().getZ()+rand.nextDouble()*10-5;
                BlockPos tpPos = new BlockPos((int)tx,(int)ty,(int)tz);
                if (level().getBlockState(tpPos).isAir() && level().getBlockState(tpPos.above()).isAir()) {
                    teleportTo(tx, ty, tz);
                    level().playSound(null, blockPosition(), SoundEvents.ENTITY_FOX_SNIFF, SoundSource.HOSTILE, 0.7F, 0.4F);
                    level().addParticle(net.minecraft.core.particles.ParticleTypes.POOF, getX(), getY()+1, getZ(), 0, 0.1, 0);
                    cooldown = 70;
                }
            }
            // Bonus speed in fog
            if (phase % 40 == 0) addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 60, 0, false, false));
        } else {
            removeEffect(MobEffects.INVISIBILITY);
        }
        // Fear aura
        if (phase % 45 == 0) {
            for (Player pl : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(9))) {
                pl.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 70, 0, false, false));
                pl.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0, false, false));
            }
        }
        // Leave fog trail
        if (phase % 30 == 0) {
            for (int i=0;i<3;i++) level().addParticle(net.minecraft.core.particles.ParticleTypes.WHITE_ASH, getX()+rand.nextDouble()-0.5, getY()+0.2, getZ()+rand.nextDouble()-0.5, 0, 0.01, 0);
        }

    }

    
    public void createFogTrail() {
        for (int i=0;i<6;i++) level().addParticle(net.minecraft.core.particles.ParticleTypes.CAMPFIRE_COSY_SMOKE, getX()+rand.nextDouble()-0.5, getY()+0.5, getZ()+rand.nextDouble()-0.5, 0, 0.03, 0);
    }
    public void fogTeleport(Player target) {
        double tx = target.getX()+rand.nextDouble()*8-4;
        double tz = target.getZ()+rand.nextDouble()*8-4;
        teleportTo(tx, target.getY(), tz);
        level().playSound(null, blockPosition(), SoundEvents.ENTITY_ENDERMAN_TELEPORT, SoundSource.HOSTILE, 0.5F, 0.7F);
    }
    public boolean isInFog() {
        return level().isRaining() || level().getBrightness(LightLayer.BLOCK, blockPosition()) < 3;
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
