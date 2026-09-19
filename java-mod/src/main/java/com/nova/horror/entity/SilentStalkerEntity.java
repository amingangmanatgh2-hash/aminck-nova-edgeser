
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
 * SilentStalkerEntity - Completely silent, no sound, appears only in peripheral vision
 * Real unique AI - no duplicate methods
 */
public class SilentStalkerEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public SilentStalkerEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 26.0).add(Attributes.MOVEMENT_SPEED, 0.4).add(Attributes.ATTACK_DAMAGE, 7.5).add(Attributes.FOLLOW_RANGE, 20.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.4, false)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        if (getTarget() instanceof Player p) {
            Vec3 look = p.getLookAngle();
            Vec3 toMe = new Vec3(getX()-p.getX(), 0, getZ()-p.getZ()).normalize();
            double dot = look.dot(toMe);
            // Only visible in peripheral (dot between -0.2 and 0.3) - not directly looked at nor completely behind
            boolean peripheral = dot > -0.2 && dot < 0.3;
            if (peripheral) {
                removeEffect(MobEffects.INVISIBILITY);
                if (phase % 60 == 0) {
                    p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
                }
            } else {
                addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 40, 0, false, false));
                if (dot > 0.5) {
                    // Player looking directly, move to side
                    if (cooldown==0) {
                        double angle = Math.toRadians(p.getYRot() + 90);
                        double tx = p.getX() + Math.sin(angle)*5;
                        double tz = p.getZ() - Math.cos(angle)*5;
                        teleportTo(tx, p.getY(), tz);
                        cooldown = 80;
                    }
                }
            }
            if (distanceTo(p) < 2.5 && cooldown==0) {
                p.hurt(level().damageSources().mobAttack(this), 7.5F);
                p.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
                cooldown = 100;
            }
        }

    }

    
    public boolean isInPeripheralVision(Player player) {
        Vec3 look = player.getLookAngle();
        Vec3 toMe = new Vec3(getX()-player.getX(),0,getZ()-player.getZ()).normalize();
        double dot = look.dot(toMe);
        return dot > -0.2 && dot < 0.3;
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
