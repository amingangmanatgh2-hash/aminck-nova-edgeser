package com.nova.horror.entity;

import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.*;
import net.minecraft.world.entity.ai.goal.target.NearestAttackableTargetGoal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.BossEvent;
import net.minecraft.server.level.ServerBossEvent;

public class ForgottenEntity extends Monster {
    private final ServerBossEvent bossEvent = new ServerBossEvent(getDisplayName(), BossEvent.BossBarColor.RED, BossEvent.BossBarOverlay.PROGRESS);

    public ForgottenEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 300.0)
            .add(Attributes.MOVEMENT_SPEED, 0.32)
            .add(Attributes.ATTACK_DAMAGE, 12.0)
            .add(Attributes.FOLLOW_RANGE, 50.0)
            .add(Attributes.KNOCKBACK_RESISTANCE, 1.0)
            .add(Attributes.ARMOR, 8.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.1, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.8));
        goalSelector.addGoal(3, new LookAtPlayerGoal(this, Player.class, 12.0f));
        targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (!level().isClientSide) {
            bossEvent.setProgress(getHealth() / getMaxHealth());
            if (tickCount % 100 == 0) {
                level().playSound(null, blockPosition(), SoundEvents.WARDEN_ROAR, net.minecraft.sounds.SoundSource.HOSTILE, 1.0f, 0.4f);
                // Fear aura
                for (Player p : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(15))) {
                    p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 100, 0));
                    p.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 1));
                    p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 100, 1));
                }
            }
            if (tickCount % 200 == 0 && getHealth() < getMaxHealth() * 0.5) {
                // Summon shades
                for (int i = 0; i < 2; i++) {
                    ShadeEntity shade = new ShadeEntity(ModEntities.SHADE.get(), level());
                    shade.moveTo(getX() + random.nextInt(5)-2, getY(), getZ() + random.nextInt(5)-2);
                    level().addFreshEntity(shade);
                }
            }
        }
    }

    @Override
    public void startSeenByPlayer(net.minecraft.server.level.ServerPlayer p) { super.startSeenByPlayer(p); bossEvent.addPlayer(p); }
    @Override
    public void stopSeenByPlayer(net.minecraft.server.level.ServerPlayer p) { super.stopSeenByPlayer(p); bossEvent.removePlayer(p); }

    @Override
    protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override
    protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override
    protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }

    @Override
    protected void dropAllDeathLoot(net.minecraft.world.damagesource.DamageSource src) {
        super.dropAllDeathLoot(src);
        // Drop crown and heart
    }
}
