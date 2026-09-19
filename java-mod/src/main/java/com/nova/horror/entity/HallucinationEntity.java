
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
 * HallucinationEntity - Hallucination - flickers, disappears when close, sanity damage
 * Real unique AI - no duplicate methods
 */
public class HallucinationEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HallucinationEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 12.0).add(Attributes.MOVEMENT_SPEED, 0.37).add(Attributes.ATTACK_DAMAGE, 1.5).add(Attributes.FOLLOW_RANGE, 34.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new WaterAvoidingRandomStrollGoal(this, 0.95)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        if (getTarget() instanceof Player p) { double d=distanceTo(p); if (d < 3.5) { teleportTo(getX()+rand.nextDouble()*20-10, getY(), getZ()+rand.nextDouble()*20-10); level().playSound(null, blockPosition(), SoundEvents.ENDERMAN_TELEPORT, SoundSource.AMBIENT, 0.5F, 1.6F); p.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 90, 0)); if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level().getServer().createCommandSourceStack(), "scoreboard players remove "+p.getName().getString()+" novahorror.sanity 3"); cooldown=70; } else if (d < 14 && phase % 45 == 0) { p.displayClientMessage(Component.literal("§8...واقعی نیست..."), true); setInvisible(rand.nextBoolean()); } }
    }

    public void distort() { setInvisible(!isInvisible()); }

    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
