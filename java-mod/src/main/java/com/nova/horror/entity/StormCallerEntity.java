
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
 * StormCallerEntity - Summons lightning and rain, stronger in storm
 * Real unique AI - no duplicate methods
 */
public class StormCallerEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public StormCallerEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 34.0).add(Attributes.MOVEMENT_SPEED, 0.32).add(Attributes.ATTACK_DAMAGE, 6.5).add(Attributes.FOLLOW_RANGE, 35.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.2, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.7)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        boolean storm = level().isThundering();
        if (storm) {
            addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 50, 1));
            addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 50, 0));
            if (phase % 80 == 0 && rand.nextInt(3)==0) {
                BlockPos strike = blockPosition().offset(rand.nextInt(10)-5, 0, rand.nextInt(10)-5);
                var lightning = new net.minecraft.world.entity.LightningBolt(net.minecraft.world.entity.EntityType.LIGHTNING_BOLT, level());
                lightning.moveTo(strike.getX(), strike.getY(), strike.getZ());
                level().addFreshEntity(lightning);
            }
        }
        if (getTarget() instanceof Player p && cooldown==0) {
            if (phase % 120 == 0) {
                level().setWeatherParameters(0, 600, true, true);
                p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0));
                level().playSound(null, p.blockPosition(), SoundEvents.ENTITY_LIGHTNING_BOLT_THUNDER, SoundSource.WEATHER, 1.0F, 0.6F);
                cooldown = 300;
            }
        }

    }

    
    public void callStorm() {
        level().setWeatherParameters(0, 1200, true, true);
        level().playSound(null, blockPosition(), SoundEvents.ENTITY_LIGHTNING_BOLT_THUNDER, SoundSource.WEATHER, 1.0F, 0.5F);
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
