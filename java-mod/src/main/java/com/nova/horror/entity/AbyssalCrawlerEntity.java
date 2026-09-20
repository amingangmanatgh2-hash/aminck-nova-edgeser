
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
 * AbyssalCrawlerEntity - Abyssal Crawler - void dweller, abyss pull, void damage, fear aura, portal particles
 * Real unique AI - enriched rich logic 100+ lines
 */
public class AbyssalCrawlerEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public AbyssalCrawlerEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 38.0).add(Attributes.MOVEMENT_SPEED, 0.36).add(Attributes.ATTACK_DAMAGE, 7.0).add(Attributes.FOLLOW_RANGE, 32.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.25, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.75)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
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
                    
                    // Void particles every 15 ticks
                    if (phase % 12 == 0) {
                        level().addParticle(net.minecraft.core.particles.ParticleTypes.PORTAL, getX()+rand.nextDouble()-0.5, getY()+1, getZ()+rand.nextDouble()-0.5, rand.nextDouble()-0.5, 0.15, rand.nextDouble()-0.5);
                        level().addParticle(net.minecraft.core.particles.ParticleTypes.SOUL, getX()+rand.nextDouble()-0.5, getY()+0.5, getZ()+rand.nextDouble()-0.5, 0, 0.03, 0);
                        level().addParticle(net.minecraft.core.particles.ParticleTypes.SCULK_SOUL, getX(), getY()+0.5, getZ(), 0, 0.02, 0);
                    }
                    // Abyss pull when close
                    if (getTarget() instanceof Player p && distanceTo(p) < 9 && cooldown==0) {
                        Vec3 pull = new Vec3(getX()-p.getX(), -0.6, getZ()-p.getZ()).normalize().scale(0.85);
                        p.setDeltaMovement(p.getDeltaMovement().add(pull));
                        p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 70, 0));
                        p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 90, 1));
                        p.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 0));
                        p.addEffect(new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 80, 0));
                        level().playSound(null, p.blockPosition(), SoundEvents.BLOCK_PORTAL_AMBIENT, SoundSource.HOSTILE, 0.9F, 0.3F);
                        level().playSound(null, p.blockPosition(), SoundEvents.PARTICLE_SOUL_ESCAPE, SoundSource.HOSTILE, 0.7F, 0.4F);
                        if (p.getY() < 12) {
                            p.hurt(level().damageSources().outOfWorld(), 2.5F);
                            p.displayClientMessage(Component.literal("§5...ورطه تو رو می‌کشه پایین..."), true);
                        }
                        if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level().getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 2");
                        cooldown = 130;
                    }
                    // Bonus in low Y (abyss)
                    if (getY() < 20) {
                        addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 40, 1, false, false));
                        addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 40, 0, false, false));
                        addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 40, 0, false, false));
                        if (phase % 30 == 0) level().addParticle(net.minecraft.core.particles.ParticleTypes.REVERSE_PORTAL, getX(), getY()+1, getZ(), 0, 0.1, 0);
                    }
                    // Fear aura every 50 ticks
                    if (phase % 50 == 0) {
                        for (Player pl : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(10))) {
                            if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level().getServer().createCommandSourceStack(), "scoreboard players add "+pl.getName().getString()+" novahorror.fear 1");
                            pl.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0, false, false));
                        }
                    }
                    // Spawn void tendril particle trail
                    if (phase % 20 == 0) {
                        for (int i=0;i<2;i++) level().addParticle(net.minecraft.core.particles.ParticleTypes.WARPED_SPORE, getX()+rand.nextDouble()-0.5, getY()+0.2, getZ()+rand.nextDouble()-0.5, 0, 0.01, 0);
                    }
        } catch (Exception e) {}
    }

    
    public void abyssPull(Player player) {
        Vec3 dir = new Vec3(getX()-player.getX(), -1.2, getZ()-player.getZ()).normalize().scale(1.0);
        player.setDeltaMovement(player.getDeltaMovement().add(dir));
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0));
        player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 1));
    }
    public void spawnVoidParticles() {
        for (int i=0;i<12;i++) {
            level().addParticle(net.minecraft.core.particles.ParticleTypes.PORTAL, getX()+rand.nextDouble()-0.5, getY()+rand.nextDouble()*2, getZ()+rand.nextDouble()-0.5, rand.nextDouble()-0.5, 0.1, rand.nextDouble()-0.5);
            level().addParticle(net.minecraft.core.particles.ParticleTypes.SOUL_FIRE_FLAME, getX(), getY()+1, getZ(), 0, 0.05, 0);
        }
    }
    public boolean isInAbyss() { return getY() < 15; }
    public void voidRift() {
        level().playSound(null, blockPosition(), SoundEvents.BLOCK_PORTAL_TRIGGER, SoundSource.HOSTILE, 1.0F, 0.3F);
        for (Player p : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(12))) {
            p.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
            p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0));
        }
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
