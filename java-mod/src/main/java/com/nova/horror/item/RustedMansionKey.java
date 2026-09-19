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

/** RustedMansionKey - Opens iron door at 0,70,0 with sound and message, consumes key - Real unique */
public class RustedMansionKey extends Item {
    private static final Random RANDOM = new Random();
    public RustedMansionKey() { super(new Properties().stacksTo(1).rarity(Rarity.UNCOMMON)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
        BlockPos doorPos = new BlockPos(0, 70, 0);
        if (player.blockPosition().distSqr(doorPos) < 150) {
            level.playSound(null, doorPos, SoundEvents.IRON_DOOR_OPEN, SoundSource.BLOCKS, 1.0F, 0.8F);
            level.setBlock(doorPos, net.minecraft.world.level.block.Blocks.AIR.defaultBlockState(), 3);
            player.displayClientMessage(Component.literal("§aدر عمارت با صدای جیرجیر باز شد..."), true);
            stack.shrink(1);
        } else {
            player.displayClientMessage(Component.literal("§7باید نزدیک در اصلی عمارت باشی..."), true);
                }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
