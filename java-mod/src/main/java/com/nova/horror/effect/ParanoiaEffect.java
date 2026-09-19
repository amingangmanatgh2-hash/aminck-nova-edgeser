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

/** ParanoiaEffect - Player sees fake entities, hears footsteps behind - Real unique fear progression */
public class ParanoiaEffect extends MobEffect {
    public ParanoiaEffect() { super(MobEffectCategory.HARMFUL, 0x1a1a1a); }

    @Override public boolean isDurationEffectTick(int duration, int amplifier) { return true; }

    
    @Override public void applyEffectTick(LivingEntity entity, int amplifier) {
        if (entity instanceof Player player && !entity.level().isClientSide) {
            if (player.tickCount % 100 == 0) {
                player.level().playSound(null, player.blockPosition().offset(player.getRandom().nextInt(6)-3,0,player.getRandom().nextInt(6)-3), SoundEvents.ENTITY_ZOMBIE_AMBIENT, SoundSource.HOSTILE, 0.5F, 0.8F);
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 20, 0));
            }
            if (player.tickCount % 200 == 0) {
                // Fake bat
                var bat = new net.minecraft.world.entity.ambient.Bat(EntityType.BAT, player.level());
                bat.moveTo(player.getX()+player.getRandom().nextDouble()*10-5, player.getY()+3, player.getZ()+player.getRandom().nextDouble()*10-5);
                bat.setCustomName(Component.literal("§8توهم"));
                bat.setNoGravity(true);
                player.level().addFreshEntity(bat);
                player.displayClientMessage(Component.literal("§8...توهم..."), true);
            }
        }
    }


    @Override public boolean isInstantenous() { return false; }
}
