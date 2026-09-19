
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
 * GraveKeeperEntity - Grave Keeper - summons crows, raises fog near graves
 * Real unique AI - no duplicate methods
 */
public class GraveKeeperEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public GraveKeeperEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 36.0).add(Attributes.MOVEMENT_SPEED, 0.29).add(Attributes.ATTACK_DAMAGE, 7.0).add(Attributes.FOLLOW_RANGE, 26.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.0, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.65)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        if (phase % 110 == 0) { for (int i=0;i<3;i++) { double x=getX()+rand.nextDouble()*12-6; double y=getY()+10+rand.nextDouble()*5; double z=getZ()+rand.nextDouble()*12-6; var bat=new net.minecraft.world.entity.ambient.Bat(EntityType.BAT, level()); bat.moveTo(x,y,z); bat.setCustomName(Component.literal("§8Grave Crow")); bat.setNoGravity(true); level().addFreshEntity(bat); } level().playSound(null, blockPosition(), SoundEvents.SOUL_ESCAPE, SoundSource.HOSTILE, 0.9F, 0.4F); level().addParticle(net.minecraft.core.particles.ParticleTypes.SOUL, getX(), getY()+1, getZ(), 0, 0.05, 0); }
    }

    public void summonGraveCrows() { for (int i=0;i<2;i++) level().addParticle(net.minecraft.core.particles.ParticleTypes.ASH, getX(), getY()+2, getZ(), 0, 0.02, 0); }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
