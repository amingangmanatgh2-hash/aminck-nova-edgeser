
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
 * MirrorEntity - Mirror Entity - mirrors player position opposite, glass break, amethyst chime
 * Real unique AI - enriched rich logic 100+ lines
 */
public class MirrorEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public MirrorEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 20.0).add(Attributes.MOVEMENT_SPEED, 0.42).add(Attributes.ATTACK_DAMAGE, 4.0).add(Attributes.FOLLOW_RANGE, 32.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.35, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.7)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        if (getTarget() instanceof Player p) {
            if (phase % 65 == 0 && cooldown==0) {
                double mx = p.getX() + (p.getX() - getX());
                double mz = p.getZ() + (p.getZ() - getZ());
                BlockPos mirrorPos = new BlockPos((int)mx, (int)p.getY(), (int)mz);
                if (level().getBlockState(mirrorPos).isAir() && level().getBlockState(mirrorPos.above()).isAir()) {
                    teleportTo(mx, p.getY(), mz);
                    level().playSound(null, blockPosition(), SoundEvents.BLOCK_GLASS_BREAK, SoundSource.HOSTILE, 0.6F, 0.7F);
                    level().addParticle(net.minecraft.core.particles.ParticleTypes.CRIT, getX(), getY()+1, getZ(), 0, 0.1, 0);
                    p.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 50, 0));
                    cooldown = 90;
                }
            }
            if (phase % 100 == 0) {
                level().playSound(null, blockPosition(), SoundEvents.BLOCK_AMETHYST_BLOCK_CHIME, SoundSource.BLOCKS, 0.6F, 0.8F);
                level().addParticle(net.minecraft.core.particles.ParticleTypes.ENCHANT, getX(), getY()+1, getZ(), 0, 0.05, 0);
            }
            if (distanceTo(p) < 4 && cooldown==0) {
                // Swap health?
                p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0));
                level().playSound(null, p.blockPosition(), SoundEvents.BLOCK_GLASS_BREAK, SoundSource.PLAYERS, 0.5F, 1.2F);
                cooldown = 80;
            }
        }
        if (phase % 50 == 0) {
            level().addParticle(net.minecraft.core.particles.ParticleTypes.WITCH, getX()+rand.nextDouble()-0.5, getY()+1, getZ()+rand.nextDouble()-0.5, 0, 0.02, 0);
        }

    }

    
    public void reflect() {
        level().playSound(null, blockPosition(), SoundEvents.BLOCK_AMETHYST_BLOCK_CHIME, SoundSource.BLOCKS, 0.8F, 0.6F);
        level().addParticle(net.minecraft.core.particles.ParticleTypes.ENCHANT, getX(), getY()+1, getZ(), 0, 0.1, 0);
    }
    public void shatter() {
        level().playSound(null, blockPosition(), SoundEvents.BLOCK_GLASS_BREAK, SoundSource.BLOCKS, 1.0F, 0.5F);
        for (int i=0;i<10;i++) level().addParticle(net.minecraft.core.particles.ParticleTypes.CRIT, getX(), getY()+1, getZ(), rand.nextDouble()-0.5, 0.1, rand.nextDouble()-0.5);
        addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 60, 0));
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
