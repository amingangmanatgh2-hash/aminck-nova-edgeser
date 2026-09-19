
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
 * HorrorEntity17 - Time Loop - rewinds player position
 * Real unique AI - no duplicate methods
 */
public class HorrorEntity17 extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HorrorEntity17(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 30.0).add(Attributes.MOVEMENT_SPEED, 0.32).add(Attributes.ATTACK_DAMAGE, 5.0).add(Attributes.FOLLOW_RANGE, 28.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.1, false)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        if (getTarget() instanceof Player p) { if (lastPos == null) lastPos = p.blockPosition(); if (phase % 150 == 0) lastPos = p.blockPosition(); if (cooldown==0 && distanceTo(p) < 6) { p.teleportTo(lastPos.getX()+0.5, lastPos.getY(), lastPos.getZ()+0.5); level().playSound(null, lastPos, SoundEvents.PORTAL_AMBIENT, SoundSource.HOSTILE, 0.8F, 0.4F); p.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 100, 0)); p.displayClientMessage(Component.literal("§5...زمان برگشت..."), false); cooldown=250; } }
    }

    public void saveLoopPos(BlockPos pos) { lastPos = pos; }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
