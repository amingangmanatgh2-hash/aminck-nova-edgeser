
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
        if (getTarget() instanceof Player p) { if (level().getServer()!=null) { var score = level().getServer().getScoreboard().getOrCreatePlayerScore(p.getName().getString(), level().getServer().getScoreboard().getObjective("novahorror.fear")); if (score.getScore() > 70) { if (phase % 60 == 0) { p.hurt(level().damageSources().magic(), 1.0F); p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0)); level().playSound(null, p.blockPosition(), SoundEvents.PARTICLE_SOUL_ESCAPE, SoundSource.HOSTILE, 0.6F, 0.4F); } } } }
    }

    public void voidTouch(Player p) { p.addEffect(new MobEffectInstance(MobEffects.WITHER, 60, 0)); }

    
    public void enrichedBehavior_HorrorEntity19() {
        // Unique enriched behavior for HorrorEntity19
        for (Player p : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(8))) {
            p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0));
            level().addParticle(net.minecraft.core.particles.ParticleTypes.SCULK_SOUL, p.getX(), p.getY()+1, p.getZ(), 0, 0.02, 0);
        }
    }
    public void applyFearAura() {
        if (level().isClientSide) return;
        for (Player p : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(10))) {
            if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level().getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 1");
        }
    }

    
        // Enriched fear aura
        if (phase % 50 == 0) {
            for (Player pl : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(9))) {
                pl.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0, false, false));
                if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level().getServer().createCommandSourceStack(), "scoreboard players add "+pl.getName().getString()+" novahorror.fear 1");
            }
        }
        // Particle trail
        if (phase % 20 == 0) {
            level().addParticle(net.minecraft.core.particles.ParticleTypes.ASH, getX()+rand.nextDouble()-0.5, getY()+1, getZ()+rand.nextDouble()-0.5, 0, 0.02, 0);
            level().addParticle(net.minecraft.core.particles.ParticleTypes.SOUL, getX(), getY()+0.5, getZ(), 0, 0.01, 0);
        }
        // Sound ambience
        if (phase % 120 == 0) {
            level().playSound(null, blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.5F, 0.7F);
        }
        // Unique behavior for HorrorEntity19
        if (getTarget() instanceof Player p && distanceTo(p) < 7 && cooldown==0) {
            p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0));
            p.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 30, 0));
            level().playSound(null, p.blockPosition(), SoundEvents.ENTITY_WARDEN_AMBIENT, SoundSource.HOSTILE, 0.7F, 0.6F);
            cooldown = 100;
        }
        // Search for dark spots
        if (phase % 80 == 0 && getTarget()==null) {
            BlockPos darkSpot = null;
            int minLight = 15;
            for (BlockPos pos : BlockPos.betweenClosed(blockPosition().offset(-10,-3,-10), blockPosition().offset(10,3,10))) {
                int light = level().getBrightness(LightLayer.BLOCK, pos);
                if (light < minLight && level().getBlockState(pos).isAir()) {
                    minLight = light;
                    darkSpot = pos.immutable();
                }
            }
            if (darkSpot != null) getNavigation().moveTo(darkSpot.getX(), darkSpot.getY(), darkSpot.getZ(), 0.8);
            }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
