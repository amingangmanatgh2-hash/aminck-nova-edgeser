package com.nova.horror.effect;

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
import net.minecraft.core.BlockPos;

/** FearProgressionEffect - Tracks fear 0-100 with 7 escalating stages, real unique progression */
public class FearProgressionEffect extends MobEffect {
    public FearProgressionEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }

    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }

    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        if (entity instanceof Player player && !entity.level().isClientSide) {
            int fear = 0;
            int sanity = 100;
            var server = entity.level().getServer();
            if (server != null) {
                var fearObj = server.getScoreboard().getObjective("novahorror.fear");
                var sanityObj = server.getScoreboard().getObjective("novahorror.sanity");
                if (fearObj != null) fear = server.getScoreboard().getOrCreatePlayerScore(player.getName().getString(), fearObj).getScore();
                if (sanityObj != null) sanity = server.getScoreboard().getOrCreatePlayerScore(player.getName().getString(), sanityObj).getScore();
            }
            // Stage 0: 0-10 calm
            if (fear < 10) {
                if (player.tickCount % 200 == 0) {
                    player.level().addParticle(ParticleTypes.ASH, player.getX(), player.getY()+1, player.getZ(), 0, 0.01, 0);
                }
            }
            // Stage 1: 10-25 uneasy
            else if (fear < 25) {
                if (player.tickCount % 150 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0, false, false));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.3F, 0.8F);
                    player.displayClientMessage(Component.literal("§7...هوا سنگین شد..."), true);
                }
            }
            // Stage 2: 25-40 nervous
            else if (fear < 40) {
                if (player.tickCount % 120 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0));
                    player.level().addParticle(ParticleTypes.SMOKE, player.getX(), player.getY()+1, player.getZ(), 0, 0.02, 0);
                    String[] msgs = {"§7...صدای پا...", "§7...کسی دنبالم میاد..."};
                    player.displayClientMessage(Component.literal(msgs[player.getRandom().nextInt(msgs.length)]), false);
                }
            }
            // Stage 3: 40-55 scared
            else if (fear < 55) {
                if (player.tickCount % 90 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 80, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 60, 0));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.WARDEN_AMBIENT, SoundSource.HOSTILE, 0.5F, 0.7F);
                    player.level().addParticle(ParticleTypes.SCULK_SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.03, 0);
                    player.displayClientMessage(Component.literal("§8...قلبم تند میزنه..."), true);
                }
            }
            // Stage 4: 55-70 very scared
            else if (fear < 70) {
                if (player.tickCount % 70 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 1));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_WARDEN_HEARTBEAT, SoundSource.HOSTILE, 0.7F, 0.6F);
                    player.level().addParticle(ParticleTypes.SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.05, 0);
                    player.displayClientMessage(Component.literal("§c...نمی‌تونم نفس بکشم..."), true);
                    if (server!=null) server.getCommands().performPrefixedCommand(server.createCommandSourceStack(), "particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.02 8");
                }
            }
            // Stage 5: 70-85 terrified
            else if (fear < 85) {
                if (player.tickCount % 50 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 30, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 80, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 120, 1));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0F, 0.5F);
                    player.level().playSound(null, player.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.HOSTILE, 0.8F, 0.4F);
                    player.level().addParticle(ParticleTypes.SCULK_SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.1, 0);
                    player.displayClientMessage(Component.literal("§4§lاو نزدیکته!"), true);
                    // Spawn fake bat
                    var bat = new net.minecraft.world.entity.ambient.Bat(EntityType.BAT, player.level());
                    bat.moveTo(player.getX()+player.getRandom().nextDouble()*8-4, player.getY()+3, player.getZ()+player.getRandom().nextDouble()*8-4);
                    bat.setCustomName(Component.literal("§cFear Phantom"));
                    bat.setNoGravity(true);
                    player.level().addFreshEntity(bat);
                }
            }
            // Stage 6: 85-100 panic - most severe
            else {
                if (player.tickCount % 35 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.WITHER, 50, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 100, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 2));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 120, 2));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.2F, 0.4F);
                    player.level().playSound(null, player.blockPosition(), SoundEvents.WARDEN_ROAR, SoundSource.HOSTILE, 0.8F, 0.3F);
                    player.level().addParticle(ParticleTypes.SOUL_FIRE_FLAME, player.getX(), player.getY()+1, player.getZ(), 0, 0.1, 0);
                    player.level().addParticle(ParticleTypes.SCULK_SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.15, 0);
                    player.displayClientMessage(Component.literal("§4§lاو اینجاست! فرار کن!"), true);
                    player.displayClientMessage(Component.literal("§c...خون... همه جا خون..."), false);
                    if (sanity < 30 && player.tickCount % 70 == 0) {
                        // Hallucination at low sanity + high fear
                        var fake = new net.minecraft.world.entity.monster.Zombie(EntityType.ZOMBIE, player.level());
                        fake.moveTo(player.getX()+player.getRandom().nextDouble()*10-5, player.getY(), player.getZ()+player.getRandom().nextDouble()*10-5);
                        fake.setCustomName(Component.literal("§8توهم وحشت"));
                        fake.setNoGravity(false);
                        player.level().addFreshEntity(fake);
                    }
                }
            }
            // Sanity interaction
            if (sanity < 20 && fear > 50 && player.tickCount % 100 == 0) {
                player.addEffect(new MobEffectInstance(MobEffects.NAUSEA, 80, 0));
                player.displayClientMessage(Component.literal("§5...عقلت داره از دست میره..."), false);
            }
        }
    }

    @Override public boolean isInstantenous() { return false; }
}
