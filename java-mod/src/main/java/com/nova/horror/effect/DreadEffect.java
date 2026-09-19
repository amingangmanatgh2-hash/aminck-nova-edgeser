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

/** DreadEffect - Constant dread, random whispers and heartbeats - Real unique fear progression */
public class DreadEffect extends MobEffect {
    public DreadEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }

    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }

    
    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        if (entity instanceof Player player && !entity.level().isClientSide) {
            if (player.tickCount % 120 == 0) {
                String[] msgs = {"§7...صدای پا...", "§7...کسی دنبالم میاد...", "§8...سایه..."};
                player.displayClientMessage(Component.literal(msgs[player.getRandom().nextInt(msgs.length)]), false);
                player.level().playSound(null, player.blockPosition(), SoundEvents.ENTITY_WARDEN_AMBIENT, SoundSource.AMBIENT, 0.6F, 0.7F);
            }
            if (player.tickCount % 60 == 0) {
                player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 40, 0, false, false));
                player.level().addParticle(ParticleTypes.ASH, player.getX(), player.getY()+1, player.getZ(), 0, 0.01, 0);
            }
        }
    }


    @Override public boolean isInstantenous() { return false; }
}
