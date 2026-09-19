
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
 * HorrorEntity02 - Weeping Angel - freezes when looked at, moves only when not seen
 * Real unique AI - no duplicate methods
 */
public class HorrorEntity02 extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HorrorEntity02(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 30.0).add(Attributes.MOVEMENT_SPEED, 0.45).add(Attributes.ATTACK_DAMAGE, 7.0).add(Attributes.FOLLOW_RANGE, 20.0);
    }

    @Override
    protected void registerGoals() {
        
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.5, false));
        targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));

    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        if (getTarget() instanceof Player p) {
            Vec3 look = p.getLookAngle();
            Vec3 toEntity = new Vec3(getX()-p.getX(), getEyeY()-p.getEyeY(), getZ()-p.getZ()).normalize();
            double dot = look.dot(toEntity);
            boolean beingWatched = dot > 0.4 && distanceTo(p) < 18 && p.hasLineOfSight(this);
            if (beingWatched) {
                setDeltaMovement(0, getDeltaMovement().y, 0);
                getNavigation().stop();
                // Crack sound when watched
                if (phase % 40 == 0) level().playSound(null, blockPosition(), SoundEvents.STONE_BREAK, SoundSource.HOSTILE, 0.3F, 1.5F);
            } else {
                if (cooldown==0) {
                    getNavigation().moveTo(p, 1.4);
                    if (distanceTo(p) < 2.5) {
                        p.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 30, 0));
                        cooldown = 60;
                    }
                }
            }
        }

    }

    
    public boolean isBeingWatchedBy(Player player) {
        Vec3 look = player.getLookAngle();
        Vec3 toEntity = new Vec3(getX()-player.getX(), 0, getZ()-player.getZ()).normalize();
        return look.dot(toEntity) > 0.3;
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
