
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
 * HorrorEntity19 - Void Whisper - high fear causes void damage
 * Real unique AI - no duplicate methods
 */
public class HorrorEntity19 extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HorrorEntity19(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 20.0).add(Attributes.MOVEMENT_SPEED, 0.3).add(Attributes.ATTACK_DAMAGE, 4.0).add(Attributes.FOLLOW_RANGE, 35.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.0, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.7)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        if (getTarget() instanceof Player p) { if (level().getServer()!=null) { var score = level().getServer().getScoreboard().getOrCreatePlayerScore(p.getName().getString(), level().getServer().getScoreboard().getObjective("novahorror.fear")); if (score.getScore() > 70) { if (phase % 60 == 0) { p.hurt(level().damageSources().magic(), 1.0F); p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0)); level().playSound(null, p.blockPosition(), SoundEvents.SOUL_ESCAPE, SoundSource.HOSTILE, 0.6F, 0.4F); } } } }
    }

    public void voidTouch(Player p) { p.addEffect(new MobEffectInstance(MobEffects.WITHER, 60, 0)); }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
