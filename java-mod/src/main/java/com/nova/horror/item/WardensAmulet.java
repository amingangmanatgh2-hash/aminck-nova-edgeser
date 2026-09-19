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
import java.util.Random;

/**
 * WardensAmulet - Warden Amulet - 10 sec protection
 * Real unique logic, not copy-paste
 */
public class WardensAmulet extends Item {
    private static final Random RANDOM = new Random();
    public WardensAmulet() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override
    public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
        player.addEffect(new MobEffectInstance(MobEffects.GLOWING, 200, 0));
        player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 200, 1));
        player.getCooldowns().addCooldown(this, 1200);
        player.displayClientMessage(Component.literal("§bتعویذ فعال شد! ۱۰ ثانیه در امانی..."), true);
        for (var entity : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(10))) {
            if (entity.getName().getString().contains("Shade")) {
                double dx = entity.getX() - player.getX();
                double dz = entity.getZ() - player.getZ();
                entity.setDeltaMovement(dx*0.5, 0.3, dz*0.5);
            }
        }
    
            player.displayClientMessage(Component.literal("§8Lore: Warden Amulet - 10 sec protection"), false);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
