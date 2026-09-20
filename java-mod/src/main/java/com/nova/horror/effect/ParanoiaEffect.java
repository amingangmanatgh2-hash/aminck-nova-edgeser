package com.nova.horror.effect;

import com.nova.horror.util.SafeScoreboardUtil;
import net.minecraft.world.effect.MobEffect;
import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.network.chat.Component;
import net.minecraft.core.particles.ParticleTypes;
import com.nova.horror.performance.SoundThrottler;
import com.nova.horror.performance.ParticleOptimizer;

/** ParanoiaEffect - safe version */
public class ParanoiaEffect extends MobEffect {
    public ParanoiaEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }
    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }
    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        try {
            if (!(entity instanceof Player player)) return;
            if (!SafeScoreboardUtil.isServerSide(player)) return;
            if (player.isDeadOrDying()) return;
            if (player.tickCount % 100 == 0) {
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0, false, false, false));
                if (ParticleOptimizer.canSpawnParticle(player)) {
                    player.level().addParticle(ParticleTypes.SMOKE, player.getX(), player.getY()+1, player.getZ(), 0, 0.01, 0);
                }
            }
        } catch (Exception e) {}
    }
    @Override public boolean isInstantenous() { return false; }
}
