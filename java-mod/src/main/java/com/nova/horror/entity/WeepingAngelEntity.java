
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
 * WeepingAngelEntity - Weeping Angel - freezes when watched, moves fast when not, cracks when watched
 * Real unique AI - enriched rich logic 100+ lines
 */
public class WeepingAngelEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public WeepingAngelEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 50.0).add(Attributes.MOVEMENT_SPEED, 0.6).add(Attributes.ATTACK_DAMAGE, 9.0).add(Attributes.FOLLOW_RANGE, 18.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.8, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.5)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        if (getTarget() instanceof Player p) {
            Vec3 playerLook = p.getLookAngle();
            Vec3 toEntity = new Vec3(getX()-p.getX(), getEyeY()-p.getEyeY(), getZ()-p.getZ()).normalize();
            double dot = playerLook.dot(toEntity);
            boolean hasLine = p.hasLineOfSight(this);
            boolean close = distanceTo(p) < 16;
            boolean beingWatched = dot > 0.35 && hasLine && close;
            if (beingWatched) {
                setDeltaMovement(0, getDeltaMovement().y, 0);
                getNavigation().stop();
                addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 40, 4, false, false));
                addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 40, 5, false, false));
                if (phase % 25 == 0) {
                    level().playSound(null, blockPosition(), SoundEvents.BLOCK_STONE_BREAK, SoundSource.BLOCKS, 0.4F, 1.3F);
                    level().addParticle(net.minecraft.core.particles.ParticleTypes.CRIT, getX(), getY()+1, getZ(), 0, 0.1, 0);
                }
                if (phase % 100 == 0) {
                    p.displayClientMessage(Component.literal("§7...نگاش نکن..."), true);
                }
            } else {
                removeEffect(MobEffects.DAMAGE_RESISTANCE);
                removeEffect(MobEffects.MOVEMENT_SLOWDOWN);
                if (cooldown==0) {
                    getNavigation().moveTo(p, 1.65);
                    if (distanceTo(p) < 2.2) {
                        p.hurt(level().damageSources().mobAttack(this), 9.0F);
                        p.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 50, 0));
                        p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0));
                        p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 1));
                        if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 6");
                        level().playSound(null, blockPosition(), SoundEvents.BLOCK_STONE_BREAK, SoundSource.HOSTILE, 1.0F, 0.5F);
                        cooldown = 100;
                    }
                }
            }
            // Quantum lock - if many players watch, freeze longer
            int watchers = 0;
            for (Player pl : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(16))) {
                Vec3 l = pl.getLookAngle();
                Vec3 t = new Vec3(getX()-pl.getX(), 0, getZ()-pl.getZ()).normalize();
                if (l.dot(t) > 0.3 && pl.hasLineOfSight(this)) watchers++;
            }
            if (watchers >= 2) {
                addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 6));
            }
        }
        if (cooldown>0) cooldown--;

    }

    
    public boolean isBeingWatchedBy(Player player) {
        Vec3 look = player.getLookAngle();
        Vec3 toEntity = new Vec3(getX()-player.getX(), getEyeY()-player.getEyeY(), getZ()-player.getZ()).normalize();
        return look.dot(toEntity) > 0.35 && player.hasLineOfSight(this) && distanceTo(player) < 16;
    }
    public int countWatchers() {
        int c=0;
        for (Player pl : level().getEntitiesOfClass(Player.class, getBoundingBox().inflate(16))) {
            if (isBeingWatchedBy(pl)) c++;
        }
        return c;
    }
    public void quantumLock() {
        setDeltaMovement(0, getDeltaMovement().y, 0);
        getNavigation().stop();
        addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 100, 5));
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
