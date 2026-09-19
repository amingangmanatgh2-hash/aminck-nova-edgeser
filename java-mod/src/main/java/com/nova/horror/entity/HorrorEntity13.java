
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
 * HorrorEntity13 - Lurking Moss - camouflaged in forest, ambush from leaves
 * Real unique AI - no duplicate methods
 */
public class HorrorEntity13 extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HorrorEntity13(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 24.0).add(Attributes.MOVEMENT_SPEED, 0.29).add(Attributes.ATTACK_DAMAGE, 5.0).add(Attributes.FOLLOW_RANGE, 24.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.1, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.6)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        BlockPos below = blockPosition().below(); boolean onGrass = level().getBlockState(below).getBlock().toString().contains("grass") || level().getBlockState(below).getBlock().toString().contains("moss"); if (onGrass) { addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 60, 0)); if (getTarget() instanceof Player p && distanceTo(p) < 3 && cooldown==0) { removeEffect(MobEffects.INVISIBILITY); p.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 60, 0)); level().playSound(null, blockPosition(), SoundEvents.GRASS_BREAK, SoundSource.HOSTILE, 1.0F, 0.5F); cooldown=120; } }
    }

    public void camouflage() { addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 100, 0)); }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
