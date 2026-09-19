
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
 * FogWalkerEntity - Fog Walker - thrives in fog, leaves fog trail, teleport in fog
 * Real unique AI - no duplicate methods
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
        boolean fog = level().isRaining() || level().getBrightness(LightLayer.BLOCK, blockPosition()) < 3; if (fog) { addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 50, 0)); if (phase % 15 == 0) level().addParticle(net.minecraft.core.particles.ParticleTypes.WHITE_ASH, getX()+rand.nextDouble()-0.5, getY()+1, getZ()+rand.nextDouble()-0.5, 0, 0.02, 0); if (getTarget()!=null && rand.nextInt(50)==0 && cooldown==0) { teleportTo(getTarget().getX()+rand.nextDouble()*8-4, getTarget().getY(), getTarget().getZ()+rand.nextDouble()*8-4); cooldown=70; } } if (phase % 45 == 0) for (Player pl : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(9))) pl.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 70, 0));
    }

    public void fogStep() { level().addParticle(net.minecraft.core.particles.ParticleTypes.CAMPFIRE_COSY_SMOKE, getX(), getY(), getZ(), 0, 0.03, 0); }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
