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
import net.minecraft.world.phys.Vec3;

/** FearProgressionEffect - 7 stages with movement, vision, sound, control impact - separate game feeling */
public class FearProgressionEffect extends MobEffect {
    public FearProgressionEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }

    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }

    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        if (entity instanceof Player player && !player.level().isClientSide) {
            int fear = 0;
            int sanity = 100;
            var server = player.level().getServer();
            if (server != null) {
                var fearObj = server.getScoreboard().getObjective("novahorror.fear");
                var sanityObj = server.getScoreboard().getObjective("novahorror.sanity");
                if (fearObj != null) fear = server.getScoreboard().getOrCreatePlayerScore(player.getName().getString(), fearObj).getScore();
                if (sanityObj != null) sanity = server.getScoreboard().getOrCreatePlayerScore(player.getName().getString(), sanityObj).getScore();
            }
            if (fear < 10) {
                if (player.tickCount % 200 == 0) {
                    player.level().addParticle(ParticleTypes.ASH, player.getX(), player.getY()+1, player.getZ(), 0, 0.01, 0);
                }
            }
            else if (fear < 25) {
                if (player.tickCount % 150 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0, false, false));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.3F, 0.8F);
                    player.displayClientMessage(Component.literal("§7...هوا سنگین شد..."), true);
                    player.level().addParticle(ParticleTypes.SMOKE, player.getX(), player.getY()+1, player.getZ(), 0, 0.02, 0);
                }
            }
            else if (fear < 40) {
                if (player.tickCount % 120 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0));
                    player.level().addParticle(ParticleTypes.SMOKE, player.getX(), player.getY()+1, player.getZ(), 0, 0.02, 0);
                    player.level().playSound(null, player.blockPosition().offset(player.getRandom().nextInt(6)-3,0,player.getRandom().nextInt(6)-3), SoundEvents.ENTITY_ZOMBIE_AMBIENT, SoundSource.HOSTILE, 0.4F, 0.7F);
                    String[] msgs = {"§7...صدای پا...", "§7...کسی دنبالم میاد..."};
                    player.displayClientMessage(Component.literal(msgs[player.getRandom().nextInt(msgs.length)]), false);
                    if (player.getRandom().nextFloat() < 0.3) {
                        Vec3 look = player.getLookAngle();
                        player.setDeltaMovement(player.getDeltaMovement().add((player.getRandom().nextDouble()-0.5)*0.1, 0, (player.getRandom().nextDouble()-0.5)*0.1));
                    }
                }
            }
            else if (fear < 55) {
                if (player.tickCount % 90 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 80, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 60, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_WARDEN_AMBIENT, SoundSource.HOSTILE, 0.5F, 0.7F);
                    player.level().addParticle(ParticleTypes.SCULK_SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.03, 0);
                    player.displayClientMessage(Component.literal("§8...قلبم تند میزنه..."), true);
                    player.setSprinting(false);
                }
            }
            else if (fear < 70) {
                if (player.tickCount % 70 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 1));
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_WARDEN_HEARTBEAT, SoundSource.HOSTILE, 0.7F, 0.6F);
                    player.level().addParticle(ParticleTypes.SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.05, 0);
                    player.displayClientMessage(Component.literal("§c...نمی‌تونم نفس بکشم..."), true);
                    player.setSprinting(false);
                    if (player.getRandom().nextFloat() < 0.4) {
                        player.setYRot(player.getYRot() + (player.getRandom().nextFloat()-0.5F)*20);
                    }
                    if (server!=null) server.getCommands().performPrefixedCommand(server.createCommandSourceStack(), "particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.02 8");
                }
            }
            else if (fear < 85) {
                if (player.tickCount % 50 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 30, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 80, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 120, 1));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 1));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0F, 0.5F);
                    player.level().playSound(null, player.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.HOSTILE, 0.8F, 0.4F);
                    player.level().addParticle(ParticleTypes.SCULK_SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.1, 0);
                    player.level().addParticle(ParticleTypes.SOUL_FIRE_FLAME, player.getX(), player.getY()+1, player.getZ(), 0, 0.05, 0);
                    player.displayClientMessage(Component.literal("§4§lاو نزدیکته!"), true);
                    player.setSprinting(false);
                    Vec3 randomPush = new Vec3((player.getRandom().nextDouble()-0.5)*0.3, 0, (player.getRandom().nextDouble()-0.5)*0.3);
                    player.setDeltaMovement(player.getDeltaMovement().add(randomPush));
                    var bat = new net.minecraft.world.entity.ambient.Bat(EntityType.BAT, player.level());
                    bat.moveTo(player.getX()+player.getRandom().nextDouble()*8-4, player.getY()+3, player.getZ()+player.getRandom().nextDouble()*8-4);
                    bat.setCustomName(Component.literal("§cFear Phantom"));
                    bat.setNoGravity(true);
                    player.level().addFreshEntity(bat);
                    player.level().playSound(null, player.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.6F, 0.3F);
                }
            }
            else {
                if (player.tickCount % 35 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.WITHER, 50, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 100, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 2));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 120, 2));
                    player.addEffect(new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 80, 1));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.2F, 0.4F);
                    player.level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_WARDEN_ROAR, SoundSource.HOSTILE, 0.8F, 0.3F);
                    player.level().addParticle(ParticleTypes.SOUL_FIRE_FLAME, player.getX(), player.getY()+1, player.getZ(), 0, 0.1, 0);
                    player.level().addParticle(ParticleTypes.SCULK_SOUL, player.getX(), player.getY()+1, player.getZ(), 0, 0.15, 0);
                    player.level().addParticle(ParticleTypes.SMOKE, player.getX(), player.getY()+1, player.getZ(), 0, 0.05, 0);
                    player.displayClientMessage(Component.literal("§4§lاو اینجاست! فرار کن!"), true);
                    player.displayClientMessage(Component.literal("§c...خون... همه جا خون..."), false);
                    player.setSprinting(false);
                    Vec3 push = new Vec3((player.getRandom().nextDouble()-0.5)*0.5, 0, (player.getRandom().nextDouble()-0.5)*0.5);
                    player.setDeltaMovement(player.getDeltaMovement().add(push));
                    player.setYRot(player.getYRot() + (player.getRandom().nextFloat()-0.5F)*30);
                    if (player.getRandom().nextFloat() < 0.2) {
                        player.addEffect(new MobEffectInstance(MobEffects.LEVITATION, 20, 0));
                    }
                    if (sanity < 30 && player.tickCount % 70 == 0) {
                        var fake = new net.minecraft.world.entity.monster.Zombie(EntityType.ZOMBIE, player.level());
                        fake.moveTo(player.getX()+player.getRandom().nextDouble()*10-5, player.getY(), player.getZ()+player.getRandom().nextDouble()*10-5);
                        fake.setCustomName(Component.literal("§8توهم وحشت"));
                        player.level().addFreshEntity(fake);
                    }
                    player.level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.5F, 0.3F);
                }
            }
            if (sanity < 20 && fear > 50 && player.tickCount % 100 == 0) {
                player.addEffect(new MobEffectInstance(MobEffects.NAUSEA, 80, 0));
                player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 60, 0));
                player.displayClientMessage(Component.literal("§5...عقلت داره از دست میره..."), false);
                player.level().playSound(null, player.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.7F, 0.4F);
                String[] whispers = {"§7...واقعی نیست...", "§7...همه توهمه...", "§8...چرا تنها شدی؟"};
                if (player.getRandom().nextFloat() < 0.5) player.displayClientMessage(Component.literal(whispers[player.getRandom().nextInt(whispers.length)]), false);
            }
            if (fear > 0 && player.tickCount % 600 == 0 && fear < 30) {
                if (sanity > 70 && server!=null) {
                    server.getCommands().performPrefixedCommand(server.createCommandSourceStack(), "scoreboard players remove "+player.getName().getString()+" novahorror.fear 1");
                }
            }
        }
    }
    @Override public boolean isInstantenous() { return false; }
}
