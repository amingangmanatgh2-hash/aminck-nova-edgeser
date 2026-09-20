package com.nova.horror.effect;

import com.nova.horror.performance.SoundThrottler;
import com.nova.horror.util.SafeScoreboardUtil;
import net.minecraft.world.effect.MobEffect;
import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;

/** SanityDrainEffect - safe NPE free, uses SafeScoreboardUtil */
public class SanityDrainEffect extends MobEffect {
    public SanityDrainEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }
    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }
    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        try {
            if (!(entity instanceof Player player)) return;
            if (!SafeScoreboardUtil.isServerSide(player)) return;
            if (player.isDeadOrDying()) return;
            int fear = SafeScoreboardUtil.getFear(player);
            int sanity = SafeScoreboardUtil.getSanity(player);
            if (fear > 50 && player.tickCount % 80 == 0) {
                SafeScoreboardUtil.removeSanity(player, 1);
            }
            if (sanity < 20 && player.tickCount % 120 == 0) {
                player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 80, 0, false, false, false));
                player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0, false, false, false));
                SoundThrottler.safePlaySound(player, SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 0.7F, 0.7F);
            }
        } catch (Exception e) {}
    }
    @Override public boolean isInstantenous() { return false; }
}
