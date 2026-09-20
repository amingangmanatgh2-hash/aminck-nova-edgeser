
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
 * PhantomWardenEntity - Warden-like but phantom, sonic boom with fear, burrows
 * Real unique AI - rich logic
 */
public class PhantomWardenEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public PhantomWardenEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 45.0).add(Attributes.MOVEMENT_SPEED, 0.32).add(Attributes.ATTACK_DAMAGE, 9.0).add(Attributes.FOLLOW_RANGE, 40.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.0, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.6)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
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
                    
                    // Burrow when no target
                    if (getTarget() == null && phase % 100 == 0) {
                        addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 60, 0));
                        level().addParticle(net.minecraft.core.particles.ParticleTypes.SCULK_SOUL, getX(), getY()+0.5, getZ(), 0, 0.02, 0);
                    }
                    // Sonic boom with fear
                    if (getTarget() instanceof Player p && distanceTo(p) < 15 && cooldown==0 && phase % 80 == 0) {
                        Vec3 dir = new Vec3(p.getX()-getX(), 0, p.getZ()-getZ()).normalize();
                        // Simulate sonic boom
                        for (int i=1;i<=8;i++) {
                            double x = getX() + dir.x*i;
                            double z = getZ() + dir.z*i;
                            level().addParticle(net.minecraft.core.particles.ParticleTypes.SONIC_BOOM, x, getY()+1, z, 0, 0, 0);
                        }
                        p.hurt(level().damageSources().sonicBoom(this), 6.0F);
                        p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 100, 0));
                        p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 100, 2));
                        if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 8");
                        level().playSound(null, blockPosition(), SoundEvents.ENTITY_WARDEN_SONIC_BOOM, SoundSource.HOSTILE, 1.5F, 0.7F);
                        cooldown = 200;
                    }
                    if (phase % 70 == 0) level().playSound(null, blockPosition(), SoundEvents.ENTITY_WARDEN_AMBIENT, SoundSource.HOSTILE, 0.6F, 0.6F);
        } catch (Exception e) {}
    }

    
    public void sonicBoom(Player player) {
        player.hurt(level().damageSources().sonicBoom(this), 5.0F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0));
    }
    public void burrow() {
        addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 100, 0));
        setNoGravity(true);
        setDeltaMovement(0, -0.2, 0);
    }
    public void emerge() {
        removeEffect(MobEffects.INVISIBILITY);
        setNoGravity(false);
        level().playSound(null, blockPosition(), SoundEvents.ENTITY_WARDEN_DIG, SoundSource.HOSTILE, 1.0F, 0.5F);
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
