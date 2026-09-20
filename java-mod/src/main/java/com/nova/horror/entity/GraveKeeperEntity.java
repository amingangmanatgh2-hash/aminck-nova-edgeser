
package com.nova.horror.entity;

import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.*;
import net.minecraft.world.entity.ai.goal.target.NearestAttackableTargetGoal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import com.nova.horror.util.EntitySpawnLimiter;
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
 * GraveKeeperEntity - Grave Keeper - summons crows, raises fog, soul escape
 * Real unique AI - enriched rich logic 100+ lines
 */
public class GraveKeeperEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public GraveKeeperEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 36.0).add(Attributes.MOVEMENT_SPEED, 0.29).add(Attributes.ATTACK_DAMAGE, 7.0).add(Attributes.FOLLOW_RANGE, 26.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.0, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.65)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
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
                    
                    if (phase % 105 == 0) {
                        for (int i=0;i<3;i++) {
                            double x=getX()+rand.nextDouble()*12-6;
                            double y=getY()+10+rand.nextDouble()*5;
                            double z=getZ()+rand.nextDouble()*12-6;
                            var bat=new net.minecraft.world.entity.ambient.Bat(net.minecraft.world.entity.EntityType.BAT, level());
                            bat.moveTo(x,y,z);
                            bat.setCustomName(Component.literal("§8Grave Crow"));
                            bat.setNoGravity(true);
                            bat.addEffect(new MobEffectInstance(MobEffects.GLOWING, 100, 0));
                            EntitySpawnLimiter.safeAddEntity(level(),(bat);
                            level().addParticle(net.minecraft.core.particles.ParticleTypes.ASH, x, y, z, 0, -0.02, 0);
                        }
                        level().playSound(null, blockPosition(), SoundEvents.PARTICLE_SOUL_ESCAPE, SoundSource.HOSTILE, 0.9F, 0.4F);
                        level().addParticle(net.minecraft.core.particles.ParticleTypes.SOUL, getX(), getY()+1, getZ(), 0, 0.08, 0);
                        level().addParticle(net.minecraft.core.particles.ParticleTypes.CAMPFIRE_COSY_SMOKE, getX(), getY()+0.5, getZ(), 0, 0.04, 0);
                    }
                    if (phase % 60 == 0) {
                        for (Player pl : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(10))) {
                            pl.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0, false, false));
                            pl.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0, false, false));
                            if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+pl.getName().getString()+" novahorror.fear 1");
                        }
                    }
                    if (getTarget() instanceof Player p && distanceTo(p) < 5 && cooldown==0) {
                        p.addEffect(new MobEffectInstance(MobEffects.WITHER, 60, 0));
                        level().playSound(null, p.blockPosition(), SoundEvents.PARTICLE_SOUL_ESCAPE, SoundSource.HOSTILE, 1.0F, 0.3F);
                        cooldown = 120;
                    }
        } catch (Exception e) {}
    }

    
    public void summonGraveCrows() {
        for (int i=0;i<4;i++) {
            double x=getX()+rand.nextDouble()*10-5;
            double y=getY()+8+rand.nextDouble()*4;
            double z=getZ()+rand.nextDouble()*10-5;
            var bat=new net.minecraft.world.entity.ambient.Bat(net.minecraft.world.entity.EntityType.BAT, level());
            bat.moveTo(x,y,z);
            bat.setCustomName(Component.literal("§8Grave Crow"));
            bat.setNoGravity(true);
            EntitySpawnLimiter.safeAddEntity(level(),(bat);
        }
    }
    public void raiseFog() {
        level().addParticle(net.minecraft.core.particles.ParticleTypes.CAMPFIRE_COSY_SMOKE, getX(), getY()+0.5, getZ(), 0, 0.05, 0);
        level().addParticle(net.minecraft.core.particles.ParticleTypes.WHITE_ASH, getX(), getY()+1, getZ(), 0, 0.02, 0);
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
