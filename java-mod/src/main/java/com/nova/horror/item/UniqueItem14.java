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

/** UniqueItem14 - Unique item 14 with special power - Real unique */
public class UniqueItem14 extends Item {
    private static final Random RANDOM = new Random();
    public UniqueItem14() { super(new Properties().stacksTo(1).rarity(Rarity.UNCOMMON)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            for (int dx=-5; dx<=5; dx++) for (int dz=-5; dz<=5; dz++) { BlockPos p = player.blockPosition().offset(dx,0,dz); if (level.getBlockState(p).is(net.minecraft.world.level.block.Blocks.COBWEB)) { level.destroyBlock(p, false); } } player.displayClientMessage(Component.literal("§aتارها پاک شد"), true);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
