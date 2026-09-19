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

public class CrawlerEntity extends Monster {
    public CrawlerEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 30.0)
            .add(Attributes.MOVEMENT_SPEED, 0.45)
            .add(Attributes.ATTACK_DAMAGE, 5.0)
            .add(Attributes.FOLLOW_RANGE, 25.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.4, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 1.0));
        goalSelector.addGoal(3, new LookAtPlayerGoal(this, Player.class, 8.0f));
        targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        // Crawl on ceiling logic - if in tunnel, try to stay high
        if (!level().isClientSide && random.nextInt(100) == 0 && this.getTarget() != null) {
            // Drop from ceiling jumpscare
            if (level().getBlockState(blockPosition().above(2)).isSolid()) {
                this.setDeltaMovement(0, -0.8, 0);
                level().playSound(null, blockPosition(), SoundEvents.SPIDER_AMBIENT, net.minecraft.sounds.SoundSource.HOSTILE, 0.8f, 0.3f);
            }
        }
    }

    @Override
    protected SoundEvent getAmbientSound() { return SoundEvents.SPIDER_AMBIENT; }
}
