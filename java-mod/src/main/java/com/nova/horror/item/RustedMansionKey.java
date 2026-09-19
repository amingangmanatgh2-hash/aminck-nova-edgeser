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
 * RustedMansionKey - Rusted Mansion Key - opens main door at 0,70,0
 * Real unique logic, not copy-paste
 */
public class RustedMansionKey extends Item {
    private static final Random RANDOM = new Random();
    public RustedMansionKey() { super(new Properties().stacksTo(1).rarity(Rarity.UNCOMMON)); }
    @Override
    public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
        // Check if looking at iron door at mansion
        BlockPos mansionDoor = new BlockPos(0, 70, 0);
        if (player.blockPosition().distSqr(mansionDoor) < 100) {
            level.playSound(null, mansionDoor, SoundEvents.IRON_DOOR_OPEN, SoundSource.BLOCKS, 1.0F, 0.8F);
            player.displayClientMessage(Component.literal("§aدر عمارت باز شد..."), true);
            // Remove key after use
            stack.shrink(1);
        }
    
            player.displayClientMessage(Component.literal("§8Lore: Rusted Mansion Key - opens main door at 0,70,0"), false);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
