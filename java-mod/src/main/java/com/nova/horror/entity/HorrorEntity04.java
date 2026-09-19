
package com.nova.horror.entity;

import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.*;
import net.minecraft.world.entity.ai.goal.target.NearestAttackableTargetGoal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import com.nova.horror.performance.EntityCullingSystem;
import com.nova.horror.config.NovaHorrorConfig;
import com.nova.horror.util.SafeScoreboardUtil;
import com.nova.horror.performance.MemoryLeakFixer;
import com.nova.horror.performance.ParticleOptimizer;
import com.nova.horror.performance.SoundThrottler;
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
 * HorrorEntity04 - Basement Dweller - emerges from floor, drags player down
 * Real unique AI - no duplicate methods
 */
public class HorrorEntity04 extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HorrorEntity04(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 32.0).add(Attributes.MOVEMENT_SPEED, 0.25).add(Attributes.ATTACK_DAMAGE, 6.0).add(Attributes.FOLLOW_RANGE, 22.0);
    }

    @Override
    protected void registerGoals() {
        
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 0.9, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.6));
        targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));

    }

    @Override
    public void tick() {
        super.tick();
        try {
            if (level().isClientSide) return;
            if (EntityCullingSystem.shouldSkipTick(this)) return;
            if (this.isDeadOrDying()) return;
            if (cooldown > 0) cooldown--;
                    phase++;
                    
                    if (blockPosition().getY() < 50) {
                        // Bonus in basement
                        addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 40, 0, false, false));
                    }
                    if (getTarget() instanceof Player p && distanceTo(p) < 5 && cooldown==0) {
                        // Emerge from floor effect
                        BlockPos floor = p.blockPosition().below();
                        if (!level().getBlockState(floor).isAir()) {
                            level().playSound(null, floor, SoundEvents.ENTITY_ZOMBIE_BREAK_WOODEN_DOOR, SoundSource.HOSTILE, 1.0F, 0.3F);
                            p.setDeltaMovement(p.getDeltaMovement().x, -0.8, p.getDeltaMovement().z);
                            p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0));
                            p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 100, 2));
                            p.addEffect(new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 100, 1));
                            teleportTo(p.getX(), p.getY(), p.getZ());
                            cooldown = 150;
                        }
                    }
        } catch (Exception e) {}
    }

    
    public void dragIntoBasement(Player player) {
        player.teleportTo(player.getX(), player.getY()-1, player.getZ());
        player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
