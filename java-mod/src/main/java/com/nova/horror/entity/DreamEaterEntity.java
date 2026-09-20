
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
 * DreamEaterEntity - Feeds on sleeping player, causes nightmare, prevents sleep
 * Real unique AI - rich logic
 */
public class DreamEaterEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public DreamEaterEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 24.0).add(Attributes.MOVEMENT_SPEED, 0.38).add(Attributes.ATTACK_DAMAGE, 5.0).add(Attributes.FOLLOW_RANGE, 30.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.3, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.9)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
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
                        if (p.isSleeping() && cooldown==0) {
                            p.stopSleeping();
                            p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 120, 0));
                            p.addEffect(new MobEffectInstance(MobEffects.NAUSEA, 100, 0));
                            p.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 200, 0));
                            if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 12");
                            level().playSound(null, p.blockPosition(), SoundEvents.ENTITY_WARDEN_ROAR, SoundSource.HOSTILE, 1.0F, 0.4F);
                            p.displayClientMessage(Component.literal("§4کابوس... نمی‌ذاره بخوابی..."), false);
                            teleportTo(p.getX()+rand.nextDouble()*4-2, p.getY(), p.getZ()+rand.nextDouble()*4-2);
                            cooldown = 300;
                        }
                        if (phase % 90 == 0 && distanceTo(p) < 12) {
                            p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0));
                            level().addParticle(net.minecraft.core.particles.ParticleTypes.SCULK_SOUL, getX(), getY()+1, getZ(), 0, 0.02, 0);
                        }
                    }
                    if (phase % 120 == 0) level().playSound(null, blockPosition(), SoundEvents.ENTITY_PHANTOM_AMBIENT, SoundSource.HOSTILE, 0.5F, 0.6F);
        } catch (Exception e) {}
    }

    
    public void preventSleep(Player player) {
        if (player.isSleeping()) {
            player.stopSleeping();
            player.displayClientMessage(Component.literal("§cچیزی نمی‌ذاره بخوابی..."), true);
        }
    }
    public void feedOnDream(Player player) {
        player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 200, 0));
        if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players remove "+player.getName().getString()+" novahorror.sanity 4");
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
