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

/** ClaustrophobiaEffect - Worse underground, better in open sky - Real unique fear progression */
public class ClaustrophobiaEffect extends MobEffect {
    public ClaustrophobiaEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }

    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }

    
    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        if (entity instanceof Player player && !entity.level().isClientSide) {
            boolean underground = player.getY() < 50 || !player.level().canSeeSky(player.blockPosition());
            if (underground) {
                if (player.tickCount % 80 == 0) {
                    player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 60, 0));
                    player.addEffect(new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 60, 0));
                    player.level().playSound(null, player.blockPosition(), SoundEvents.AMBIENT_BASALT_DELTAS_MOOD, SoundSource.AMBIENT, 0.6F, 0.5F);
                }
                if (player.tickCount % 150 == 0) player.displayClientMessage(Component.literal("§7...دیوارها نزدیک میشن..."), true);
            } else {
                if (player.tickCount % 100 == 0) player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 40, 0, false, false));
            }
        }
    }


    @Override public boolean isInstantenous() { return false; }
}
