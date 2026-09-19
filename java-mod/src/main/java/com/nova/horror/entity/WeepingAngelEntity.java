
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
 * WeepingAngelEntity - Weeping Angel - only moves when not looked at, stone when watched
 * Real unique AI - no duplicate methods
 */
public class WeepingAngelEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public WeepingAngelEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 50.0).add(Attributes.MOVEMENT_SPEED, 0.6).add(Attributes.ATTACK_DAMAGE, 9.0).add(Attributes.FOLLOW_RANGE, 18.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.8, false)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        if (getTarget() instanceof Player p) { Vec3 look = p.getLookAngle(); Vec3 toMe = new Vec3(getX()-p.getX(), getEyeY()-p.getEyeY(), getZ()-p.getZ()).normalize(); double dot = look.dot(toMe); boolean watched = dot > 0.35 && distanceTo(p) < 16 && p.hasLineOfSight(this); if (watched) { setDeltaMovement(0, getDeltaMovement().y, 0); getNavigation().stop(); addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 40, 4)); if (phase % 30 == 0) level().playSound(null, blockPosition(), SoundEvents.STONE_HIT, SoundSource.BLOCKS, 0.4F, 1.2F); } else { if (cooldown==0) { getNavigation().moveTo(p, 1.6); if (distanceTo(p) < 2) { p.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 50, 0)); p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0)); cooldown=100; } } } }
    }

    public boolean isWatched(Player p) { Vec3 l = p.getLookAngle(); Vec3 t = new Vec3(getX()-p.getX(),0,getZ()-p.getZ()).normalize(); return l.dot(t) > 0.3; }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
