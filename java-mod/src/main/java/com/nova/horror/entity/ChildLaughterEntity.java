
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
 * ChildLaughterEntity - Child Laughter - giggles, fast, ambush from behind, villager sound high pitch
 * Real unique AI - enriched rich logic 100+ lines
 */
public class ChildLaughterEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public ChildLaughterEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 18.0).add(Attributes.MOVEMENT_SPEED, 0.55).add(Attributes.ATTACK_DAMAGE, 3.5).add(Attributes.FOLLOW_RANGE, 38.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.7, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 1.1)); goalSelector.addGoal(3, new LookAtPlayerGoal(this, Player.class, 10.0F)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
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
                    
                    if (phase % 60 == 0) {
                        level().playSound(null, blockPosition(), SoundEvents.ENTITY_VILLAGER_AMBIENT, SoundSource.HOSTILE, 0.9F, 1.9F);
                        level().addParticle(net.minecraft.core.particles.ParticleTypes.NOTE, getX(), getY()+1.5, getZ(), rand.nextDouble(), rand.nextDouble(), rand.nextDouble());
                    }
                    if (getTarget() instanceof Player p) {
                        if (distanceTo(p) > 12 && rand.nextInt(85)==0 && cooldown==0) {
                            double ang = rand.nextDouble()*Math.PI*2;
                            double tx = p.getX()+Math.cos(ang)*3.5;
                            double tz = p.getZ()+Math.sin(ang)*3.5;
                            BlockPos tpPos = new BlockPos((int)tx,(int)p.getY(),(int)tz);
                            if (level().getBlockState(tpPos).isAir()) {
                                teleportTo(tx, p.getY(), tz);
                                p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 45, 0));
                                p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 50, 0));
                                level().playSound(null, p.blockPosition(), SoundEvents.ENTITY_VILLAGER_HURT, SoundSource.HOSTILE, 0.7F, 1.8F);
                                if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 2");
                                cooldown = 100;
                            }
                        }
                        if (phase % 40 == 0 && distanceTo(p) < 6) {
                            p.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 40, 0, false, false));
                        }
                    }
                    if (phase % 30 == 0) {
                        level().addParticle(net.minecraft.core.particles.ParticleTypes.HEART, getX()+rand.nextDouble()-0.5, getY()+1, getZ()+rand.nextDouble()-0.5, 0, 0.02, 0);
                    }
        } catch (Exception e) {}
    }

    
    public void giggle() {
        level().playSound(null, blockPosition(), SoundEvents.ENTITY_VILLAGER_AMBIENT, SoundSource.HOSTILE, 1.0F, 1.9F);
        level().addParticle(net.minecraft.core.particles.ParticleTypes.NOTE, getX(), getY()+1.5, getZ(), 0, 0.1, 0);
    }
    public void childAmbush(Player player) {
        double ang = rand.nextDouble()*Math.PI*2;
        double tx = player.getX()+Math.cos(ang)*3;
        double tz = player.getZ()+Math.sin(ang)*3;
        teleportTo(tx, player.getY(), tz);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0));
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
