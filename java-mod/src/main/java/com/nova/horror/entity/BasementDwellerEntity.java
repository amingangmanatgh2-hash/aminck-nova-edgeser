
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
 * BasementDwellerEntity - Basement Dweller - bonus underground, drags player down
 * Real unique AI - no duplicate methods
 */
public class BasementDwellerEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public BasementDwellerEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 34.0).add(Attributes.MOVEMENT_SPEED, 0.27).add(Attributes.ATTACK_DAMAGE, 7.0).add(Attributes.FOLLOW_RANGE, 22.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 0.95, false)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        if (getY() < 50) addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 50, 0)); if (getTarget() instanceof Player p && distanceTo(p) < 5 && cooldown==0) { p.setDeltaMovement(p.getDeltaMovement().x, -0.9, p.getDeltaMovement().z); p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 90, 0)); p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 110, 2)); level().playSound(null, p.blockPosition(), SoundEvents.ANVIL_LAND, SoundSource.HOSTILE, 0.7F, 0.2F); teleportTo(p.getX(), p.getY(), p.getZ()); cooldown=160; }
    }

    public void pullDown(Player p) { p.teleportTo(p.getX(), p.getY()-1, p.getZ()); }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
