
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
 * PuppetMasterEntity - Controls other horror entities, buffs them, hides behind them
 * Real unique AI - no duplicate methods
 */
public class PuppetMasterEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public PuppetMasterEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 32.0).add(Attributes.MOVEMENT_SPEED, 0.3).add(Attributes.ATTACK_DAMAGE, 4.0).add(Attributes.FOLLOW_RANGE, 40.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new WaterAvoidingRandomStrollGoal(this, 0.8)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        if (phase % 100 == 0) {
            var minions = level().getEntitiesOfClass(Monster.class, getBoundingBox().inflate(15), e -> e != this && e.getType() != net.minecraft.world.entity.EntityType.PLAYER);
            for (Monster m : minions) {
                m.addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 120, 0));
                m.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 120, 0));
                m.getNavigation().moveTo(getTarget() != null ? getTarget().blockPosition().getCenter() : getX(), getY(), getZ(), 1.1);
            }
            if (!minions.isEmpty()) {
                addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 80, 0));
                level().playSound(null, blockPosition(), SoundEvents.BLOCK_BELL_RESONATE, SoundSource.HOSTILE, 0.7F, 0.6F);
            }
        }
        if (getTarget() instanceof Player p && distanceTo(p) < 4 && cooldown==0) {
            // Swap place with minion
            var minions = level().getEntitiesOfClass(Monster.class, getBoundingBox().inflate(10), e -> e != this);
            if (!minions.isEmpty()) {
                Monster m = minions.get(rand.nextInt(minions.size()));
                double mx = m.getX(), my = m.getY(), mz = m.getZ();
                m.teleportTo(getX(), getY(), getZ());
                teleportTo(mx, my, mz);
                p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0));
                cooldown = 150;
            }
        }

    }

    
    public void buffMinions() {
        for (Monster m : level().getEntitiesOfClass(Monster.class, getBoundingBox().inflate(12), e -> e != this)) {
            m.addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 100, 0));
        }
    }
    public void hideBehindMinion(Monster minion) {
        teleportTo(minion.getX() + rand.nextDouble()*2-1, minion.getY(), minion.getZ() + rand.nextDouble()*2-1);
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
