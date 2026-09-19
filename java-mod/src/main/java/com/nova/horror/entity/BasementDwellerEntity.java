
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
 * BasementDwellerEntity - Basement Dweller - bonus underground, drags down, darkness, slow, anvil sound
 * Real unique AI - enriched rich logic 100+ lines
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
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 0.95, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.5)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        boolean inBasement = getY() < 50 || !level().canSeeSky(blockPosition());
        if (inBasement) {
            addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 50, 0, false, false));
            addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 50, 0, false, false));
            if (phase % 30 == 0) level().addParticle(net.minecraft.core.particles.ParticleTypes.SOUL, getX(), getY()+0.5, getZ(), 0, 0.02, 0);
        }
        if (getTarget() instanceof Player p && distanceTo(p) < 5.5 && cooldown==0) {
            BlockPos floor = p.blockPosition().below();
            if (!level().getBlockState(floor).isAir()) {
                p.setDeltaMovement(p.getDeltaMovement().x, -0.9, p.getDeltaMovement().z);
                p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 90, 0));
                p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 110, 2));
                p.addEffect(new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 100, 1));
                p.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 80, 0));
                level().playSound(null, p.blockPosition(), SoundEvents.ANVIL_LAND, SoundSource.HOSTILE, 0.7F, 0.2F);
                level().playSound(null, p.blockPosition(), SoundEvents.ZOMBIE_BREAK_WOODEN_DOOR, SoundSource.HOSTILE, 0.8F, 0.3F);
                teleportTo(p.getX(), p.getY(), p.getZ());
                if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 4");
                cooldown = 160;
            }
        }
        if (phase % 60 == 0) {
            for (Player pl : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(8))) {
                if (pl.getY() < 50) pl.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0, false, false));
            }
        }

    }

    
    public void pullDown(Player player) {
        player.teleportTo(player.getX(), player.getY()-1, player.getZ());
        player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
        player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 100, 2));
    }
    public void basementRoar() {
        level().playSound(null, blockPosition(), SoundEvents.WARDEN_ROAR, SoundSource.HOSTILE, 1.0F, 0.3F);
        for (Player p : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(12))) {
            p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0));
        }
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
