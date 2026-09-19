package com.nova.horror.effect;

import com.nova.horror.NovaHorrorMod;
import net.minecraft.world.effect.MobEffect;
import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

public class FearEffect extends MobEffect {
    public static final DeferredRegister<MobEffect> EFFECTS = DeferredRegister.create(ForgeRegistries.MOB_EFFECTS, NovaHorrorMod.MODID);
    public static final RegistryObject<MobEffect> FEAR = EFFECTS.register("fear", () -> new FearEffect());

    public FearEffect() {
        super(MobEffectCategory.HARMFUL, 0x1a1a2e);
    }

    @Override
    public void applyEffectTick(LivingEntity entity, int amplifier) {
        if (entity.level().isClientSide) return;
        int amp = amplifier;
        if (amp >= 0) {
            entity.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, amp));
        }
        if (amp >= 1) {
            entity.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, amp-1));
        }
        if (amp >= 2) {
            entity.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 80, 0));
        }
        if (amp >= 3) {
            entity.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
        }
    }

    @Override
    public boolean isDurationEffectTick(int duration, int amplifier) {
        return duration % 20 == 0;
    }

    public static void register(IEventBus bus) {
        EFFECTS.register(bus);
    }
}
