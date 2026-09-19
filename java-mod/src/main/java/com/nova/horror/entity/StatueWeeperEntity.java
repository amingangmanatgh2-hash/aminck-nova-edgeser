
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
 * StatueWeeperEntity - Weeps blood, tears cause wither, freezes when looked at from front
 * Real unique AI - rich logic
 */
public class StatueWeeperEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public StatueWeeperEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 42.0).add(Attributes.MOVEMENT_SPEED, 0.25).add(Attributes.ATTACK_DAMAGE, 7.5).add(Attributes.FOLLOW_RANGE, 22.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.0, false)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        if (phase % 25 == 0) {
            level().addParticle(net.minecraft.core.particles.ParticleTypes.DRIPPING_OBSIDIAN_TEAR, getX()+rand.nextDouble()-0.5, getY()+1.5, getZ()+rand.nextDouble()-0.5, 0, -0.05, 0);
            level().addParticle(net.minecraft.core.particles.ParticleTypes.FALLING_LAVA, getX(), getY()+1, getZ(), 0, -0.1, 0);
        }
        if (getTarget() instanceof Player p) {
            Vec3 look = p.getLookAngle();
            Vec3 toMe = new Vec3(getX()-p.getX(), 0, getZ()-p.getZ()).normalize();
            double dot = look.dot(toMe);
            boolean frontWatched = dot > 0.5 && distanceTo(p) < 12 && p.hasLineOfSight(this);
            if (frontWatched) {
                setDeltaMovement(0, getDeltaMovement().y, 0);
                getNavigation().stop();
                addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 30, 3));
            } else {
                if (cooldown==0) {
                    getNavigation().moveTo(p, 1.1);
                    if (distanceTo(p) < 3) {
                        p.addEffect(new MobEffectInstance(MobEffects.WITHER, 80, 0));
                        p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0));
                        cooldown = 90;
                    }
                }
            }
            if (phase % 100 == 0) level().playSound(null, blockPosition(), SoundEvents.BLOCK_GRASS_BREAK, SoundSource.HOSTILE, 0.6F, 0.4F);
        }

    }

    
    public void weepBlood() {
        for (int i=0;i<5;i++) level().addParticle(net.minecraft.core.particles.ParticleTypes.DRIPPING_LAVA, getX()+rand.nextDouble()-0.5, getY()+1.5, getZ()+rand.nextDouble()-0.5, 0, -0.05, 0);
    }
    public void tearCurse(Player player) {
        player.addEffect(new MobEffectInstance(MobEffects.WITHER, 100, 0));
        player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 100, 0));
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
