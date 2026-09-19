
package com.nova.horror.entity;

import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.*;
import net.minecraft.world.entity.ai.goal.target.NearestAttackableTargetGoal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
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
 * HallucinationEntity - Hallucination - flickers, disappears when close, sanity drain, whisper
 * Real unique AI - enriched rich logic 100+ lines
 */
public class HallucinationEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public HallucinationEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 12.0).add(Attributes.MOVEMENT_SPEED, 0.37).add(Attributes.ATTACK_DAMAGE, 1.5).add(Attributes.FOLLOW_RANGE, 34.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new WaterAvoidingRandomStrollGoal(this, 0.95)); goalSelector.addGoal(2, new LookAtPlayerGoal(this, Player.class, 12.0F)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        if (getTarget() instanceof Player p) {
            double dist = distanceTo(p);
            if (dist < 3.5) {
                double nx = getX()+rand.nextDouble()*20-10;
                double nz = getZ()+rand.nextDouble()*20-10;
                teleportTo(nx, getY(), nz);
                level().playSound(null, blockPosition(), SoundEvents.ENTITY_ENDERMAN_TELEPORT, SoundSource.AMBIENT, 0.5F, 1.6F);
                level().addParticle(net.minecraft.core.particles.ParticleTypes.POOF, getX(), getY()+1, getZ(), 0, 0.1, 0);
                p.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 90, 0));
                p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0));
                if (level().getServer()!=null) {
                    level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players remove "+p.getName().getString()+" novahorror.sanity 3");
                    level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 2");
                }
                cooldown = 70;
            } else if (dist < 14) {
                if (phase % 40 == 0) {
                    p.displayClientMessage(Component.literal("§8...واقعی نیست... توهمه..."), true);
                    setInvisible(rand.nextBoolean());
                    level().addParticle(net.minecraft.core.particles.ParticleTypes.WITCH, getX(), getY()+1, getZ(), 0, 0.02, 0);
                }
                if (phase % 90 == 0) {
                    level().playSound(null, p.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.6F, 0.8F);
                }
            }
        }
        if (phase % 25 == 0) {
            setInvisible(rand.nextFloat() < 0.4);
            if (isInvisible()) level().addParticle(net.minecraft.core.particles.ParticleTypes.SMOKE, getX(), getY()+1, getZ(), 0, 0.01, 0);
        }

    }

    
    public void flicker() {
        setInvisible(!isInvisible());
        level().addParticle(net.minecraft.core.particles.ParticleTypes.POOF, getX(), getY()+1, getZ(), 0, 0.05, 0);
    }
    public void distortVision(Player player) {
        player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 100, 0));
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0));
        if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players remove "+player.getName().getString()+" novahorror.sanity 2");
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
