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

/** FearProgressionEffect - Tracks fear 0-100, escalating effects - Real unique fear progression */
public class FearProgressionEffect extends MobEffect {
    public FearProgressionEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }

    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }

    
    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        if (entity instanceof Player player && !entity.level().isClientSide) {
            int fear = 0;
            var server = entity.level().getServer();
            if (server != null) {
                var obj = server.getScoreboard().getObjective("novahorror.fear");
                if (obj != null) fear = server.getScoreboard().getOrCreatePlayerScore(player.getName().getString(), obj).getScore();
            }
            if (fear < 20) {
                // Calm
            } else if (fear < 40) {
                if (player.tickCount % 100 == 0) player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0, false, false));
            } else if (fear < 60) {
                if (player.tickCount % 80 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.5F, 0.6F);
                }
            } else if (fear < 80) {
                if (player.tickCount % 60 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 30, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 80, 0));
                    player.displayClientMessage(Component.literal("§c...نمی‌تونم نفس بکشم..."), true);
                }
            } else {
                if (player.tickCount % 40 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.WITHER, 40, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 60, 0));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0F, 0.5F);
                    player.displayClientMessage(Component.literal("§4§lاو اینجاست!"), true);
                }
            }
        }
    }


    @Override public boolean isInstantenous() { return false; }
}
