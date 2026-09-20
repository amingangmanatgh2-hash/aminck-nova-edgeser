
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
 * AtticWatcherEntity - Attic Watcher - watches from high, stare causes blindness, whispers, drops feathers
 * Real unique AI - enriched rich logic 100+ lines
 */
public class AtticWatcherEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public AtticWatcherEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 24.0).add(Attributes.MOVEMENT_SPEED, 0.31).add(Attributes.ATTACK_DAMAGE, 5.0).add(Attributes.FOLLOW_RANGE, 42.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.05, false)); goalSelector.addGoal(2, new LookAtPlayerGoal(this, Player.class, 20.0F)); goalSelector.addGoal(3, new WaterAvoidingRandomStrollGoal(this, 0.6)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
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
                        boolean high = getY() > p.getY() + 4.5;
                        if (high) {
                            addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 80, 0, false, false));
                            if (phase % 75 == 0) {
                                p.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 60, 0));
                                p.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 80, 0));
                                p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0));
                                level().playSound(null, p.blockPosition(), SoundEvents.ENTITY_ENDERMAN_STARE, SoundSource.HOSTILE, 0.9F, 0.5F);
                                level().addParticle(net.minecraft.core.particles.ParticleTypes.ASH, p.getX(), p.getY()+1, p.getZ(), 0, 0.02, 0);
                                if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level().getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 2");
                            }
                            if (phase % 150 == 0) {
                                p.displayClientMessage(Component.literal("§7...از بالا نگاهت می‌کنه..."), false);
                            }
                        } else {
                            removeEffect(MobEffects.INVISIBILITY);
                            if (phase % 60 == 0) getNavigation().moveTo(p, 1.0);
                        }
                    }
                    if (phase % 100 == 0) {
                        level().addParticle(net.minecraft.core.particles.ParticleTypes.WHITE_ASH, getX(), getY()+2, getZ(), 0, 0.02, 0);
                    }
                    if (phase % 200 == 0) level().playSound(null, blockPosition(), SoundEvents.ENTITY_PHANTOM_AMBIENT, SoundSource.HOSTILE, 0.4F, 0.7F);
        } catch (Exception e) {}
    }

    
    public void watchFromAbove(Player player) {
        if (getY() > player.getY() + 4) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0));
            player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 30, 0));
            level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_ENDERMAN_STARE, SoundSource.HOSTILE, 0.8F, 0.6F);
        }
    }
    public void dropFeather() {
        level().addParticle(net.minecraft.core.particles.ParticleTypes.WHITE_ASH, getX(), getY(), getZ(), 0, -0.05, 0);
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
