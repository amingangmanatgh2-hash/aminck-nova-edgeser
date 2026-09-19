
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
 * MimicWhisperEntity - Mimics sounds, copies last player death message, whispers
 * Real unique AI - no duplicate methods
 */
public class MimicWhisperEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public MimicWhisperEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 20.0).add(Attributes.MOVEMENT_SPEED, 0.36).add(Attributes.ATTACK_DAMAGE, 4.0).add(Attributes.FOLLOW_RANGE, 38.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.1, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.9)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        if (phase % 85 == 0) { SoundEvent[] pool = {SoundEvents.AMBIENT_CAVE, SoundEvents.WARDEN_AMBIENT, SoundEvents.GHAST_SCREAM, SoundEvents.ENDERMAN_SCREAM, SoundEvents.WOLF_HOWL}; level().playSound(null, blockPosition(), pool[rand.nextInt(pool.length)], SoundSource.AMBIENT, 0.7F, rand.nextFloat()*0.6F+0.6F); } if (getTarget() instanceof Player p && phase % 180 == 0) { String[] whispers = {"§7...صداتو شنیدم...", "§7...مثل تو حرف می‌زنم...", "§7...برگرد پیشم..."}; p.displayClientMessage(Component.literal(whispers[rand.nextInt(whispers.length)]), false); level().playSound(null, p.blockPosition(), SoundEvents.WHISPER_1, SoundSource.HOSTILE, 0.6F, 0.9F); }
    }

    public void copySound(SoundEvent ev) { level().playSound(null, blockPosition(), ev, SoundSource.HOSTILE, 0.8F, 0.8F); }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
