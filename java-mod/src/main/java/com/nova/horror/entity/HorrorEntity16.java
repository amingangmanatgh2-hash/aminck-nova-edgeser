package com.nova.horror.entity;

import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.*;
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
import java.util.*;

/**
 * HorrorEntity16 - Real horror entity 16
 * Diverse AI: chase, ambush, teleport, fear aura, crows by moon
 */
public class HorrorEntity16 extends Monster {
    private int teleportCooldown = 0;
    private boolean isOnCeiling = false;
    private BlockPos attachedPos = null;
    private int phase = 1;
    private Random random = new Random();

    public HorrorEntity16(EntityType<? extends Monster> type, Level level) { super(type, level); }
    public static AttributeSupplier.Builder createAttributes() { return Monster.createMonsterAttributes().add(Attributes.MAX_HEALTH, 100.0).add(Attributes.MOVEMENT_SPEED, 0.41).add(Attributes.ATTACK_DAMAGE, 4.0).add(Attributes.FOLLOW_RANGE, 41.0); }
    @Override protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.2, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.8));
        goalSelector.addGoal(3, new LookAtPlayerGoal(this, Player.class, 10.0F));
    }

    public void teleportBehind0_16(Player player) {
        if (player == null || teleportCooldown > 0) return;
        Vec3 look = player.getLookAngle();
        Vec3 toMob = new Vec3(getX() - player.getX(), 0, getZ() - player.getZ()).normalize();
        double dot = look.dot(toMob);
        if (dot < -0.4 && distanceTo(player) > 7 && distanceTo(player) < 20) {
            double yaw = Math.toRadians(player.getYRot());
            double bx = player.getX() - Math.sin(yaw) * 2.8;
            double bz = player.getZ() + Math.cos(yaw) * 2.8;
            BlockPos behind = new BlockPos((int)bx, (int)player.getY(), (int)bz);
            if (level.getBlockState(behind).isAir() && level.getBlockState(behind.above()).isAir()) {
                teleportTo(bx, player.getY(), bz);
                level.playSound(null, behind, SoundEvents.ENDERMAN_TELEPORT, SoundSource.HOSTILE, 0.7F, 0.3F);
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
                teleportCooldown = 180;
            }
        }
    }
    

    public void whisperTo(Player player) {
        if (player == null || level.isClientSide) return;
        String[] msgs = {
            "§7...نمی‌تونی فرار کنی...",
            "§7...الارا منتظره...",
            "§7...قلب می‌تپه...",
            "§7...برگرد...",
            "§7...او اینجاست..."
        };
        if (tickCount % 120 == 0) {
            String msg = msgs[random.nextInt(msgs.length)];
            player.displayClientMessage(Component.literal(msg), false);
            level.playSound(null, player.blockPosition(), SoundEvents.WHISPER_1, SoundSource.AMBIENT, 0.7F, 0.9F);
        }
    }
    

    public void playNightSounds2_16() {
        if (level.isClientSide) return;
        if (level.isNight() && tickCount % 80 == 0) {
            BlockPos pos = blockPosition();
            SoundEvent[] nights = {
                SoundEvents.AMBIENT_CAVE.get(),
                SoundEvents.WARDEN_AMBIENT,
                SoundEvents.GHAST_MOAN,
                SoundEvents.PARROT_IMITATE_GHAST,
                SoundEvents.WOLF_HOWL
            };
            SoundEvent chosen = nights[random.nextInt(nights.length)];
            level.playSound(null, pos, chosen, SoundSource.AMBIENT, 0.7F, 0.5F + random.nextFloat()*0.5F);
        }
    }
    

    public void teleportBehind3_16(Player player) {
        if (player == null || teleportCooldown > 0) return;
        Vec3 look = player.getLookAngle();
        Vec3 toMob = new Vec3(getX() - player.getX(), 0, getZ() - player.getZ()).normalize();
        double dot = look.dot(toMob);
        if (dot < -0.4 && distanceTo(player) > 7 && distanceTo(player) < 20) {
            double yaw = Math.toRadians(player.getYRot());
            double bx = player.getX() - Math.sin(yaw) * 2.8;
            double bz = player.getZ() + Math.cos(yaw) * 2.8;
            BlockPos behind = new BlockPos((int)bx, (int)player.getY(), (int)bz);
            if (level.getBlockState(behind).isAir() && level.getBlockState(behind.above()).isAir()) {
                teleportTo(bx, player.getY(), bz);
                level.playSound(null, behind, SoundEvents.ENDERMAN_TELEPORT, SoundSource.HOSTILE, 0.7F, 0.3F);
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
                teleportCooldown = 180;
            }
        }
    }
    

    public void ambushInDark4_16(Player player) {
        if (player == null) return;
        int light = level.getBrightness(LightLayer.BLOCK, player.blockPosition());
        if (light < 4 && distanceTo(player) < 6) {
            setInvisible(true);
            addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 80, 0, false, false));
            // Wait 2 sec then attack
            if (tickCount % 40 == 0 && distanceTo(player) < 3) {
                setInvisible(false);
                doHurtTarget(player);
                level.playSound(null, blockPosition(), SoundEvents.WARDEN_ROAR, SoundSource.HOSTILE, 1.0F, 0.5F);
                player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
            }
        }
    }
    

    public void teleportBehind5_16(Player player) {
        if (player == null || teleportCooldown > 0) return;
        Vec3 look = player.getLookAngle();
        Vec3 toMob = new Vec3(getX() - player.getX(), 0, getZ() - player.getZ()).normalize();
        double dot = look.dot(toMob);
        if (dot < -0.4 && distanceTo(player) > 7 && distanceTo(player) < 20) {
            double yaw = Math.toRadians(player.getYRot());
            double bx = player.getX() - Math.sin(yaw) * 2.8;
            double bz = player.getZ() + Math.cos(yaw) * 2.8;
            BlockPos behind = new BlockPos((int)bx, (int)player.getY(), (int)bz);
            if (level.getBlockState(behind).isAir() && level.getBlockState(behind.above()).isAir()) {
                teleportTo(bx, player.getY(), bz);
                level.playSound(null, behind, SoundEvents.ENDERMAN_TELEPORT, SoundSource.HOSTILE, 0.7F, 0.3F);
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
                teleportCooldown = 180;
            }
        }
    }
    

    public void teleportBehind6_16(Player player) {
        if (player == null || teleportCooldown > 0) return;
        Vec3 look = player.getLookAngle();
        Vec3 toMob = new Vec3(getX() - player.getX(), 0, getZ() - player.getZ()).normalize();
        double dot = look.dot(toMob);
        if (dot < -0.4 && distanceTo(player) > 7 && distanceTo(player) < 20) {
            double yaw = Math.toRadians(player.getYRot());
            double bx = player.getX() - Math.sin(yaw) * 2.8;
            double bz = player.getZ() + Math.cos(yaw) * 2.8;
            BlockPos behind = new BlockPos((int)bx, (int)player.getY(), (int)bz);
            if (level.getBlockState(behind).isAir() && level.getBlockState(behind.above()).isAir()) {
                teleportTo(bx, player.getY(), bz);
                level.playSound(null, behind, SoundEvents.ENDERMAN_TELEPORT, SoundSource.HOSTILE, 0.7F, 0.3F);
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
                teleportCooldown = 180;
            }
        }
    }
    

    public void teleportBehind7_16(Player player) {
        if (player == null || teleportCooldown > 0) return;
        Vec3 look = player.getLookAngle();
        Vec3 toMob = new Vec3(getX() - player.getX(), 0, getZ() - player.getZ()).normalize();
        double dot = look.dot(toMob);
        if (dot < -0.4 && distanceTo(player) > 7 && distanceTo(player) < 20) {
            double yaw = Math.toRadians(player.getYRot());
            double bx = player.getX() - Math.sin(yaw) * 2.8;
            double bz = player.getZ() + Math.cos(yaw) * 2.8;
            BlockPos behind = new BlockPos((int)bx, (int)player.getY(), (int)bz);
            if (level.getBlockState(behind).isAir() && level.getBlockState(behind.above()).isAir()) {
                teleportTo(bx, player.getY(), bz);
                level.playSound(null, behind, SoundEvents.ENDERMAN_TELEPORT, SoundSource.HOSTILE, 0.7F, 0.3F);
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
                teleportCooldown = 180;
            }
        }
    }
    

    public void summonCrowsByMoon() {
        if (level.isClientSide || tickCount % 100 != 0) return;
        // Like graphical game - crows fly by moon at night
        if (!level.isNight()) return;
        for (int i=0; i<2; i++) {
            double x = getX() + random.nextDouble()*20-10;
            double y = getY() + 12 + random.nextDouble()*5;
            double z = getZ() + random.nextDouble()*20-10;
            // Summon bat as crow
            var bat = new net.minecraft.world.entity.ambient.Bat(EntityType.BAT, level);
            bat.moveTo(x, y, z);
            bat.setCustomName(Component.literal("§8Crow by Moon"));
            bat.setNoGravity(true);
            level.addFreshEntity(bat);
            level.playSound(null, new BlockPos((int)x,(int)y,(int)z), SoundEvents.PARROT_IMITATE_GHAST, SoundSource.AMBIENT, 0.5F, 0.8F);
            level.addParticle(net.minecraft.core.particles.ParticleTypes.ASH, x, y, z, 0, 0.01, 0);
        }
    }
    

    public void chasePlayer9_16(Player player) {
        if (player == null || level.isClientSide) return;
        double predX = player.getX() + player.getDeltaMovement().x * 15;
        double predZ = player.getZ() + player.getDeltaMovement().z * 15;
        Vec3 targetPos = new Vec3(predX, player.getY(), predZ);
        this.getNavigation().moveTo(targetPos.x, targetPos.y, targetPos.z, 1.4);
        if (distanceTo(player) < 3) {
            doHurtTarget(player);
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0));
        }
    }
    

    public void fearAura10_16() {
        if (level.isClientSide || tickCount % 50 != 0) return;
        for (Player p : level.getEntitiesOfClass(Player.class, getBoundingBox().inflate(12))) {
            p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 70, 0, false, false));
            p.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 80, 0, false, false));
            // Increase fear scoreboard via command
            if (level.getServer() != null) {
                level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(),
                    "scoreboard players add " + p.getName().getString() + " novahorror.fear 1");
            }
        }
    }
    

    public void playNightSounds11_16() {
        if (level.isClientSide) return;
        if (level.isNight() && tickCount % 80 == 0) {
            BlockPos pos = blockPosition();
            SoundEvent[] nights = {
                SoundEvents.AMBIENT_CAVE.get(),
                SoundEvents.WARDEN_AMBIENT,
                SoundEvents.GHAST_MOAN,
                SoundEvents.PARROT_IMITATE_GHAST,
                SoundEvents.WOLF_HOWL
            };
            SoundEvent chosen = nights[random.nextInt(nights.length)];
            level.playSound(null, pos, chosen, SoundSource.AMBIENT, 0.7F, 0.5F + random.nextFloat()*0.5F);
        }
    }
    

    public void checkPhaseTransition() {
        float hp = getHealth() / getMaxHealth();
        if (hp < 0.66F && phase == 1) {
            phase = 2;
            level.playSound(null, blockPosition(), SoundEvents.WARDEN_ROAR, SoundSource.HOSTILE, 1.2F, 0.4F);
            getAttribute(Attributes.MOVEMENT_SPEED).setBaseValue(0.36);
        } else if (hp < 0.33F && phase == 2) {
            phase = 3;
            level.playSound(null, blockPosition(), SoundEvents.WARDEN_SONIC_BOOM, SoundSource.HOSTILE, 1.2F, 0.3F);
            getAttribute(Attributes.ATTACK_DAMAGE).setBaseValue(18.0);
        }
    }
    

    public void dropJumpscare13_16(Player player) {
        if (player == null || !isOnCeiling) return;
        if (distanceTo(player) < 5 && random.nextInt(30)==0) {
            isOnCeiling = false;
            setNoGravity(false);
            setDeltaMovement(0, -1.0, 0);
            level.playSound(null, blockPosition(), SoundEvents.SPIDER_FALL, SoundSource.HOSTILE, 1.0F, 0.2F);
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0));
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 1));
        }
    }
    

    public void teleportBehind14_16(Player player) {
        if (player == null || teleportCooldown > 0) return;
        Vec3 look = player.getLookAngle();
        Vec3 toMob = new Vec3(getX() - player.getX(), 0, getZ() - player.getZ()).normalize();
        double dot = look.dot(toMob);
        if (dot < -0.4 && distanceTo(player) > 7 && distanceTo(player) < 20) {
            double yaw = Math.toRadians(player.getYRot());
            double bx = player.getX() - Math.sin(yaw) * 2.8;
            double bz = player.getZ() + Math.cos(yaw) * 2.8;
            BlockPos behind = new BlockPos((int)bx, (int)player.getY(), (int)bz);
            if (level.getBlockState(behind).isAir() && level.getBlockState(behind.above()).isAir()) {
                teleportTo(bx, player.getY(), bz);
                level.playSound(null, behind, SoundEvents.ENDERMAN_TELEPORT, SoundSource.HOSTILE, 0.7F, 0.3F);
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
                teleportCooldown = 180;
            }
        }
    }
    
    @Override public void tick() { super.tick(); if (level().isClientSide) return; if (teleportCooldown>0) teleportCooldown--; 
        if (tickCount % 20 == 0) { chasePlayer(getTarget() instanceof Player ? (Player)getTarget() : null); }
        if (tickCount % 30 == 0) { fearAura(); }
        if (tickCount % 100 == 0) { summonCrowsByMoon(); playNightSounds(); }
        if (tickCount % 30 == 0) { chasePlayer(getTarget() instanceof Player ? (Player)getTarget() : null); }
        if (tickCount % 40 == 0) { fearAura(); }
        if (tickCount % 120 == 0) { summonCrowsByMoon(); playNightSounds(); }
        if (tickCount % 40 == 0) { chasePlayer(getTarget() instanceof Player ? (Player)getTarget() : null); }
        if (tickCount % 50 == 0) { fearAura(); }
        if (tickCount % 140 == 0) { summonCrowsByMoon(); playNightSounds(); }
        if (tickCount % 50 == 0) { chasePlayer(getTarget() instanceof Player ? (Player)getTarget() : null); }
        if (tickCount % 60 == 0) { fearAura(); }
        if (tickCount % 160 == 0) { summonCrowsByMoon(); playNightSounds(); }
        if (tickCount % 60 == 0) { chasePlayer(getTarget() instanceof Player ? (Player)getTarget() : null); }
        if (tickCount % 70 == 0) { fearAura(); }
        if (tickCount % 180 == 0) { summonCrowsByMoon(); playNightSounds(); }
    }
    @Override protected SoundEvent getAmbientSound() { return SoundEvents.WARDEN_AMBIENT; }
}
