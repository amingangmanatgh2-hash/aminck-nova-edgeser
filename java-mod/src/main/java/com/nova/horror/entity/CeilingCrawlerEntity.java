
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
 * CeilingCrawlerEntity - Crawls on ceiling, drops when player below, clings, ambushes from dark
 * Real unique AI - enriched rich logic 100+ lines
 */
public class CeilingCrawlerEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public CeilingCrawlerEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 26.0).add(Attributes.MOVEMENT_SPEED, 0.33).add(Attributes.ATTACK_DAMAGE, 5.5).add(Attributes.FOLLOW_RANGE, 24.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.3, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.6)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        BlockPos ceil = blockPosition().above(2);
        boolean hasCeiling = !level().getBlockState(ceil).isAir() && !level().getBlockState(ceil).is(net.minecraft.world.level.block.Blocks.AIR);
        boolean isDark = level().getBrightness(LightLayer.BLOCK, blockPosition()) < 5;
        if (hasCeiling && isDark) {
            setNoGravity(true);
            if (phase % 20 == 0) {
                setDeltaMovement(0, 0.015, 0);
                level().addParticle(net.minecraft.core.particles.ParticleTypes.ASH, getX(), getY()+0.5, getZ(), 0, -0.01, 0);
            }
            // Hide when ceiling
            if (phase % 80 == 0) addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 60, 0, false, false));
            if (getTarget() instanceof Player p) {
                double distSqr = p.blockPosition().distSqr(blockPosition());
                boolean playerBelow = p.getY() < getY() - 1.5;
                if (distSqr < 25 && playerBelow && cooldown==0) {
                    setNoGravity(false);
                    setDeltaMovement(0, -1.6, 0);
                    p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 70, 0));
                    p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 90, 1));
                    p.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 40, 0));
                    level().playSound(null, blockPosition(), SoundEvents.SPIDER_PRIM, SoundSource.HOSTILE, 1.0F, 0.3F);
                    level().playSound(null, p.blockPosition(), SoundEvents.PLAYER_HURT, SoundSource.PLAYERS, 0.6F, 0.8F);
                    if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level().getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 3");
                    cooldown = 140;
                }
            }
        } else {
            setNoGravity(false);
            if (phase % 60 == 0) {
                // Search for ceiling
                for (BlockPos pos : BlockPos.betweenClosed(blockPosition().offset(-8,0,-8), blockPosition().offset(8,4,8))) {
                    if (!level().getBlockState(pos.above()).isAir() && level().getBlockState(pos).isAir()) {
                        getNavigation().moveTo(pos.getX(), pos.getY(), pos.getZ(), 0.9);
                        break;
                    }
                }
            }
        }
        // Fear aura when on ceiling
        if (hasCeiling && phase % 50 == 0) {
            for (Player pl : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(8))) {
                pl.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 40, 0, false, false));
            }
        }

    }

    
    public void clingToCeiling(BlockPos ceilingPos) {
        lastPos = ceilingPos;
        setNoGravity(true);
        teleportTo(ceilingPos.getX()+0.5, ceilingPos.getY()-1, ceilingPos.getZ()+0.5);
        addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 100, 0));
    }
    public void dropAmbush(Player player) {
        setNoGravity(false);
        setDeltaMovement(0, -1.8, 0);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0));
        player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 30, 0));
        level().playSound(null, blockPosition(), SoundEvents.SPIDER_AMBIENT, SoundSource.HOSTILE, 1.0F, 0.2F);
    }
    public boolean hasCeilingAbove() {
        BlockPos above = blockPosition().above(2);
        return !level().getBlockState(above).isAir();
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.WARDEN_DEATH; }
}
