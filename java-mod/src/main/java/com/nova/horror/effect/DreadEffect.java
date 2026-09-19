package com.nova.horror.effect;

import com.nova.horror.performance.ParticleOptimizer;
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
import net.minecraft.network.chat.Component;
import net.minecraft.core.particles.ParticleTypes;

/** DreadEffect - safe, no NPE, FPS boost */
public class DreadEffect extends MobEffect {
    public DreadEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }
    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }
    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        try {
            if (!(entity instanceof Player player)) return;
            if (!SafeScoreboardUtil.isServerSide(player)) return;
            if (player.isDeadOrDying()) return;
            if (player.tickCount % 140 == 0) {
                String[] msgs = {"§7...صدای پا...", "§7...کسی دنبالم میاد...", "§8...سایه..."};
                try { player.displayClientMessage(Component.literal(msgs[player.getRandom().nextInt(msgs.length)]), false); } catch (Exception e) {}
                SoundThrottler.safePlaySound(player, SoundEvents.ENTITY_WARDEN_AMBIENT, SoundSource.AMBIENT, 0.5F, 0.7F);
            }
            if (player.tickCount % 80 == 0 && ParticleOptimizer.canSpawnParticle(player)) {
                player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 40, 0, false, false, false));
                ParticleOptimizer.safeParticle(player.level(), ParticleTypes.ASH, player.getX(), player.getY()+1, player.getZ(), 0, 0.01, 0, player);
            }
        } catch (Exception e) {}
    }
    @Override public boolean isInstantenous() { return false; }
}
