package com.nova.horror.item;

import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Rarity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.world.InteractionResultHolder;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.core.BlockPos;
import net.minecraft.network.chat.Component;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.phys.Vec3;
import java.util.Random;

/** FlickeringCandle - Torch flickers realistically, intensity based on nearby entities - Real unique logic */
public class FlickeringCandle extends Item {
    private static final Random RANDOM = new Random();
    public FlickeringCandle() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            var nearby = level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(15));
            float flickerIntensity = 0.2F + nearby.size()*0.15F;
            for (int i=0;i<10;i++) {
                double x = player.getX()+level.random.nextDouble()*4-2;
                double y = player.getY()+1+level.random.nextDouble();
                double z = player.getZ()+level.random.nextDouble()*4-2;
                level.addParticle(net.minecraft.core.particles.ParticleTypes.FLAME, x, y, z, (level.random.nextDouble()-0.5)*flickerIntensity, 0.02, (level.random.nextDouble()-0.5)*flickerIntensity);
            }
            if (nearby.isEmpty()) {
                player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 200, 0));
                player.displayClientMessage(Component.literal("§eشمع آروم می‌سوزه... چیزی نزدیک نیست"), true);
            } else {
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
                player.displayClientMessage(Component.literal("§cشمع دیوانه‌وار می‌لرزه! "+nearby.size()+" موجود نزدیکته!"), true);
                level.playSound(null, player.blockPosition(), SoundEvents.BLOCK_FIRE_EXTINGUISH, SoundSource.AMBIENT, 0.6F, 0.7F);
            }
            player.getCooldowns().addCooldown(this, 80);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
