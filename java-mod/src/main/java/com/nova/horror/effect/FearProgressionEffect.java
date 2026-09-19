package com.nova.horror.effect;

import com.nova.horror.config.NovaHorrorConfig;
import com.nova.horror.performance.FpsBoostManager;
import com.nova.horror.performance.MemoryLeakFixer;
import com.nova.horror.performance.ParticleOptimizer;
import com.nova.horror.performance.SoundThrottler;
import com.nova.horror.util.SafeScoreboardUtil;
import net.minecraft.world.effect.MobEffect;
import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.EntityType;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.network.chat.Component;
import net.minecraft.core.particles.ParticleTypes;
import net.minecraft.world.phys.Vec3;

/**
 * FearProgressionEffect - 7 stages with movement, vision, sound, control impact
 * FIXED: No memory leak, bat/zombie limited, safe scoreboard, FPS boost, no NPE
 */
public class FearProgressionEffect extends MobEffect {
    public FearProgressionEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }

    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }

    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        try {
            if (!(entity instanceof Player player)) return;
            if (player.level().isClientSide) return;
            if (!SafeScoreboardUtil.isServerSide(player)) return;
            if (player.isDeadOrDying()) return;

            int fear = SafeScoreboardUtil.getFear(player);
            int sanity = SafeScoreboardUtil.getSanity(player);
            if (fear < 0) fear = 0;
            if (fear > 100) fear = 100;
            if (sanity < 0) sanity = 0;
            if (sanity > 100) sanity = 100;

            if (fear < 10) {
                if (player.tickCount % 200 == 0 && ParticleOptimizer.canSpawnParticle(player)) {
                    ParticleOptimizer.safeParticle(player.level(), ParticleTypes.ASH, player.getX(), player.getY()+1, player.getZ(), 0, 0.01, 0, player);
                }
            }
            else if (fear < 25) {
                if (player.tickCount % 150 == 0 && FpsBoostManager.canApplyFearEffect(player)) {
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0, false, false, false));
                    SoundThrottler.safePlaySound(player, SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.3F, 0.8F);
                    if (player.tickCount % 300 == 0) player.displayClientMessage(Component.literal("§7...هوا سنگین شد..."), true);
                    if (ParticleOptimizer.canSpawnParticle(player)) {
                        ParticleOptimizer.safeParticle(player.level(), ParticleTypes.SMOKE, player.getX(), player.getY()+1, player.getZ(), 0, 0.02, 0, player);
                    }
                }
            }
            else if (fear < 40) {
                if (player.tickCount % 120 == 0 && FpsBoostManager.canApplyFearEffect(player)) {
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0, false, false, false));
                    if (ParticleOptimizer.canSpawnParticle(player)) {
                        ParticleOptimizer.safeParticle(player.level(), ParticleTypes.SMOKE, player.getX(), player.getY()+1, player.getZ(), 0, 0.02, 0, player);
                    }
                    try {
                        if (SoundThrottler.canPlaySound(player, "zombie_ambient")) {
                            player.level().playSound(null, player.blockPosition().offset(player.getRandom().nextInt(6)-3,0,player.getRandom().nextInt(6)-3), SoundEvents.ENTITY_ZOMBIE_AMBIENT, SoundSource.HOSTILE, 0.4F, 0.7F);
                        }
                    } catch (Exception e) {}
                    if (player.tickCount % 400 == 0) {
                        String[] msgs = {"§7...صدای پا...", "§7...کسی دنبالم میاد..."};
                        try { player.displayClientMessage(Component.literal(msgs[player.getRandom().nextInt(msgs.length)]), false); } catch (Exception e) {}
                    }
                    if (player.getRandom().nextFloat() < 0.15) {
                        try {
                            if (!player.isPassenger() && !player.isCreative()) {
                                player.setDeltaMovement(player.getDeltaMovement().add((player.getRandom().nextDouble()-0.5)*0.06, 0, (player.getRandom().nextDouble()-0.5)*0.06));
                            }
                        } catch (Exception e) {}
                    }
                }
            }
            else if (fear < 55) {
                if (player.tickCount % 100 == 0 && FpsBoostManager.canApplyFearEffect(player)) {
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 80, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 60, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0, false, false, false));
                    SoundThrottler.safePlaySound(player, SoundEvents.ENTITY_WARDEN_AMBIENT, SoundSource.HOSTILE, 0.5F, 0.7F);
                    if (ParticleOptimizer.canSpawnParticle(player)) {
                        ParticleOptimizer.safeParticle(player.level(), ParticleTypes.SCULK_SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.03, 0, player);
                    }
                    if (player.tickCount % 300 == 0) player.displayClientMessage(Component.literal("§8...قلبم تند میزنه..."), true);
                    try { player.setSprinting(false); } catch (Exception e) {}
                }
            }
            else if (fear < 70) {
                if (player.tickCount % 80 == 0 && FpsBoostManager.canApplyFearEffect(player)) {
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 1, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0, false, false, false));
                    SoundThrottler.safePlaySound(player, SoundEvents.ENTITY_WARDEN_HEARTBEAT, SoundSource.HOSTILE, 0.7F, 0.6F);
                    if (ParticleOptimizer.canSpawnParticle(player)) {
                        ParticleOptimizer.safeParticle(player.level(), ParticleTypes.SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.05, 0, player);
                    }
                    player.displayClientMessage(Component.literal("§c...نمی‌تونم نفس بکشم..."), true);
                    try {
                        player.setSprinting(false);
                        if (player.getRandom().nextFloat() < 0.25) {
                            player.setYRot(player.getYRot() + (player.getRandom().nextFloat()-0.5F)*12);
                        }
                    } catch (Exception e) {}
                }
            }
            else if (fear < 85) {
                if (player.tickCount % 70 == 0 && FpsBoostManager.canApplyFearEffect(player)) {
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 30, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 80, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 120, 1, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 1, false, false, false));
                    SoundThrottler.safePlaySound(player, SoundEvents.ENTITY_WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0F, 0.5F);
                    if (SoundThrottler.canPlaySound(player, "cave2")) {
                        try { player.level().playSound(null, player.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.HOSTILE, 0.8F, 0.4F); } catch (Exception e) {}
                    }
                    if (ParticleOptimizer.canSpawnParticle(player)) {
                        ParticleOptimizer.safeParticle(player.level(), ParticleTypes.SCULK_SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.1, 0, player);
                        ParticleOptimizer.safeParticle(player.level(), ParticleTypes.SOUL_FIRE_FLAME, player.getX(), player.getY()+1, player.getZ(), 0, 0.05, 0, player);
                    }
                    player.displayClientMessage(Component.literal("§4§lاو نزدیکته!"), true);
                    try {
                        player.setSprinting(false);
                        Vec3 randomPush = new Vec3((player.getRandom().nextDouble()-0.5)*0.15, 0, (player.getRandom().nextDouble()-0.5)*0.15);
                        if (!player.isPassenger()) player.setDeltaMovement(player.getDeltaMovement().add(randomPush));
                    } catch (Exception e) {}
                    if (MemoryLeakFixer.canSpawnBat(player)) {
                        try {
                            var bat = new net.minecraft.world.entity.ambient.Bat(EntityType.BAT, player.level());
                            bat.moveTo(player.getX()+player.getRandom().nextDouble()*8-4, player.getY()+3, player.getZ()+player.getRandom().nextDouble()*8-4);
                            bat.setCustomName(Component.literal("§cFear Phantom"));
                            bat.setNoGravity(true);
                            bat.setPersistenceRequired();
                            bat.addEffect(new MobEffectInstance(MobEffects.GLOWING, 200, 0));
                            com.nova.horror.util.EntitySpawnLimiter.safeAddEntity(player.level(), bat);
                        } catch (Exception e) {}
                    }
                }
            }
            else {
                if (player.tickCount % 60 == 0 && FpsBoostManager.canApplyFearEffect(player)) {
                    player.addEffect(new MobEffectInstance(MobEffects.WITHER, 50, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 100, 0, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 2, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 120, 2, false, false, false));
                    player.addEffect(new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 80, 1, false, false, false));
                    SoundThrottler.safePlaySound(player, SoundEvents.ENTITY_WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.2F, 0.4F);
                    if (SoundThrottler.canPlaySound(player, "roar")) {
                        try { player.level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_WARDEN_ROAR, SoundSource.HOSTILE, 0.8F, 0.3F); } catch (Exception e) {}
                    }
                    if (ParticleOptimizer.canSpawnParticle(player)) {
                        ParticleOptimizer.safeParticle(player.level(), ParticleTypes.SOUL_FIRE_FLAME, player.getX(), player.getY()+1, player.getZ(), 0, 0.1, 0, player);
                        ParticleOptimizer.safeParticle(player.level(), ParticleTypes.SCULK_SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.15, 0, player);
                    }
                    player.displayClientMessage(Component.literal("§4§lاو اینجاست! فرار کن!"), true);
                    if (player.tickCount % 200 == 0) player.displayClientMessage(Component.literal("§c...خون... همه جا خون..."), false);
                    try {
                        player.setSprinting(false);
                        Vec3 push = new Vec3((player.getRandom().nextDouble()-0.5)*0.25, 0, (player.getRandom().nextDouble()-0.5)*0.25);
                        if (!player.isPassenger()) player.setDeltaMovement(player.getDeltaMovement().add(push));
                        player.setYRot(player.getYRot() + (player.getRandom().nextFloat()-0.5F)*15);
                        if (player.getRandom().nextFloat() < 0.08) {
                            player.addEffect(new MobEffectInstance(MobEffects.LEVITATION, 20, 0, false, false, false));
                        }
                    } catch (Exception e) {}
                    if (sanity < 30 && MemoryLeakFixer.canSpawnZombieHallucination(player) && player.tickCount % 150 == 0) {
                        try {
                            var fake = new net.minecraft.world.entity.monster.Zombie(EntityType.ZOMBIE, player.level());
                            fake.moveTo(player.getX()+player.getRandom().nextDouble()*10-5, player.getY(), player.getZ()+player.getRandom().nextDouble()*10-5);
                            fake.setCustomName(Component.literal("§8توهم وحشت"));
                            fake.setNoGravity(false);
                            fake.setPersistenceRequired();
                            fake.addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 200, 0));
                            com.nova.horror.util.EntitySpawnLimiter.safeAddEntity(player.level(), fake);
                        } catch (Exception e) {}
                    }
                    MemoryLeakFixer.cleanupOldTempEntities(player);
                }
            }
            if (sanity < 20 && fear > 50 && player.tickCount % 150 == 0 && FpsBoostManager.canApplyFearEffect(player)) {
                player.addEffect(new MobEffectInstance(MobEffects.NAUSEA, 80, 0, false, false, false));
                player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 60, 0, false, false, false));
                if (player.tickCount % 400 == 0) player.displayClientMessage(Component.literal("§5...عقلت داره از دست میره..."), false);
                SoundThrottler.safePlaySound(player, SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.7F, 0.4F);
            }
            if (fear > 0 && player.tickCount % 600 == 0 && fear < 30) {
                if (sanity > 70) {
                    SafeScoreboardUtil.removeFear(player, 1);
                }
            }
        } catch (Exception e) {
        }
    }
    @Override public boolean isInstantenous() { return false; }
}
