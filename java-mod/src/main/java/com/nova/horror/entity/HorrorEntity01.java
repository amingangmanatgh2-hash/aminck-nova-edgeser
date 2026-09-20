
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
 * HorrorEntity01 - Mimic - copies player sounds, whispers from behind
 * Real unique AI - no duplicate methods
 */
public class HorrorEntity01 extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HorrorEntity01(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 20.0).add(Attributes.MOVEMENT_SPEED, 0.32).add(Attributes.ATTACK_DAMAGE, 4.0).add(Attributes.FOLLOW_RANGE, 35.0);
    }

    @Override
    protected void registerGoals() {
        
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.0, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.9));
        goalSelector.addGoal(3, new LookAtPlayerGoal(this, Player.class, 15.0F));
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
                    
                    if (getTarget() instanceof Player p) {
                        if (phase % 80 == 0) {
                            // Mimic random player hurt sound
                            SoundEvent[] mimics = {SoundEvents.ENTITY_PLAYER_HURT, SoundEvents.ENTITY_PLAYER_HURT, SoundEvents.PARROT_IMITATE_GHAST, SoundEvents.ENTITY_PARROT_IMITATE_GHAST};
                            level().playSound(null, p.blockPosition(), mimics[rand.nextInt(mimics.length)], SoundSource.AMBIENT, 0.7F, rand.nextFloat()*0.5F+0.7F);
                        }
                        if (phase % 200 == 0 && distanceTo(p) > 8) {
                            // Teleport behind and whisper
                            double yaw = Math.toRadians(p.getYRot());
                            double bx = p.getX() - Math.sin(yaw)*3;
                            double bz = p.getZ() + Math.cos(yaw)*3;
                            teleportTo(bx, p.getY(), bz);
                            p.displayClientMessage(Component.literal("§7...چرا تنها رفتی..."), false);
                            level().playSound(null, p.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.8F, 0.9F);
                            cooldown = 100;
                        }
                    }
        } catch (Exception e) {}
    }

    
    public void mimicFootstep(Player player) {
        level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_ZOMBIE_AMBIENT, SoundSource.HOSTILE, 0.5F, 0.6F);
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
