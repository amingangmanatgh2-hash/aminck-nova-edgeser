
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
 * HorrorEntity12 - Whispering Wind - invisible, only sound and particles
 * Real unique AI - no duplicate methods
 */
public class HorrorEntity12 extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HorrorEntity12(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 18.0).add(Attributes.MOVEMENT_SPEED, 0.4).add(Attributes.ATTACK_DAMAGE, 3.0).add(Attributes.FOLLOW_RANGE, 30.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new WaterAvoidingRandomStrollGoal(this, 1.0)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 40, 0, false, false)); if (phase % 40 == 0) { level().addParticle(net.minecraft.core.particles.ParticleTypes.ASH, getX(), getY()+1, getZ(), rand.nextDouble()-0.5, 0.02, rand.nextDouble()-0.5); } if (getTarget() instanceof Player p && phase % 90 == 0) { level().playSound(null, p.blockPosition(), SoundEvents.WHISPER_1, SoundSource.AMBIENT, 0.7F, 0.8F); p.displayClientMessage(Component.literal("§7...باد نجوا می‌کند..."), false); }
    }

    public void gust(Player p) { p.setDeltaMovement(p.getDeltaMovement().x+ (rand.nextDouble()-0.5)*0.5, 0.1, p.getDeltaMovement().z + (rand.nextDouble()-0.5)*0.5); }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
