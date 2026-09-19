
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
 * BloodPoolEntity - Lives in blood, spreads blood particles, heals in blood
 * Real unique AI - no duplicate methods
 */
public class BloodPoolEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public BloodPoolEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 30.0).add(Attributes.MOVEMENT_SPEED, 0.28).add(Attributes.ATTACK_DAMAGE, 6.0).add(Attributes.FOLLOW_RANGE, 24.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.0, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.6)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        // Check if on redstone or blood-like block
        BlockPos below = blockPosition().below();
        boolean onBlood = level().getBlockState(below).getBlock().toString().contains("red") || level().getBlockState(below).is(net.minecraft.world.level.block.Blocks.REDSTONE_BLOCK);
        if (onBlood) {
            addEffect(new MobEffectInstance(MobEffects.REGENERATION, 40, 0));
            addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 40, 0));
            if (phase % 20 == 0) level().addParticle(net.minecraft.core.particles.ParticleTypes.DRIPPING_OBSIDIAN_TEAR, getX(), getY()+0.2, getZ(), 0, -0.05, 0);
        }
        if (phase % 30 == 0) {
            level().addParticle(net.minecraft.core.particles.ParticleTypes.FALLING_LAVA, getX()+rand.nextDouble()-0.5, getY()+1, getZ()+rand.nextDouble()-0.5, 0, -0.1, 0);
        }
        if (getTarget() instanceof Player p && distanceTo(p) < 6 && cooldown==0) {
            p.addEffect(new MobEffectInstance(MobEffects.WITHER, 60, 0));
            p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 1));
            level().playSound(null, blockPosition(), SoundEvents.BLOCK_LAVA_EXTINGUISH, SoundSource.HOSTILE, 0.7F, 0.4F);
            cooldown = 120;
        }

    }

    
    public void spreadBlood() {
        for (BlockPos p : BlockPos.betweenClosed(blockPosition().offset(-3,0,-3), blockPosition().offset(3,0,3))) {
            if (level().getBlockState(p).isAir() && rand.nextFloat() < 0.1) {
                level().addParticle(net.minecraft.core.particles.ParticleTypes.DRIPPING_LAVA, p.getX()+0.5, p.getY()+1, p.getZ()+0.5, 0, -0.05, 0);
            }
        }
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
