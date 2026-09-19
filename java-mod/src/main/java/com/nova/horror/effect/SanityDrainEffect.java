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

/** SanityDrainEffect - Sanity decreases over time, low sanity causes hallucinations - Real unique fear progression */
public class SanityDrainEffect extends MobEffect {
    public SanityDrainEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }

    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }

    
    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        if (entity instanceof Player player && !entity.level().isClientSide) {
            var server = player.level().getServer();
            if (server != null) {
                var sanityObj = server.getScoreboard().getObjective("novahorror.sanity");
                var fearObj = server.getScoreboard().getObjective("novahorror.fear");
                if (sanityObj != null && fearObj != null) {
                    int sanity = server.getScoreboard().getOrCreatePlayerScore(player.getName().getString(), sanityObj).getScore();
                    int fear = server.getScoreboard().getOrCreatePlayerScore(player.getName().getString(), fearObj).getScore();
                    if (fear > 50 && player.tickCount % 60 == 0) {
                        server.getCommands().performPrefixedCommand(server.createCommandSourceStack(), "scoreboard players remove "+player.getName().getString()+" novahorror.sanity 1");
                    }
                    if (sanity < 20 && player.tickCount % 100 == 0) {
                        player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 80, 0));
                        player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
                        player.level().playSound(null, player.blockPosition(), SoundEvents.WHISPER_1, SoundSource.AMBIENT, 0.8F, 0.7F);
                    }
                }
            }
        }
    }


    @Override public boolean isInstantenous() { return false; }
}
