
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
 * HorrorEntity07 - Child Laughter - small fast giggles then ambush
 * Real unique AI - no duplicate methods
 */
public class HorrorEntity07 extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HorrorEntity07(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 16.0).add(Attributes.MOVEMENT_SPEED, 0.5).add(Attributes.ATTACK_DAMAGE, 3.5).add(Attributes.FOLLOW_RANGE, 35.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.6, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 1.0)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        if (phase % 70 == 0) { level().playSound(null, blockPosition(), SoundEvents.VILLAGER_AMBIENT, SoundSource.HOSTILE, 0.8F, 1.8F); } if (getTarget() instanceof Player p && distanceTo(p) > 10 && rand.nextInt(100)==0) { double angle = rand.nextDouble()*Math.PI*2; double tx = p.getX() + Math.cos(angle)*4; double tz = p.getZ() + Math.sin(angle)*4; teleportTo(tx, p.getY(), tz); p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0)); cooldown=90; }
    }

    public void giggle() { level().playSound(null, blockPosition(), SoundEvents.PARROT_IMITATE_GHAST, SoundSource.AMBIENT, 0.6F, 1.9F); }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
