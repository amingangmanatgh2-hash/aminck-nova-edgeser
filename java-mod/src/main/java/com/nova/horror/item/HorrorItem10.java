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
import java.util.Random;

/** HorrorItem10 - Unique item 10 */
public class HorrorItem10 extends Item {
    private static final Random RANDOM = new Random();
    public HorrorItem10() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            // Key logic - open door at mansion
            BlockPos door = new BlockPos(0, 70, 0);
            if (player.blockPosition().distSqr(door) < 200) {
                level.playSound(null, door, SoundEvents.IRON_DOOR_OPEN, SoundSource.BLOCKS, 1.0F, 0.8F);
                player.displayClientMessage(Component.literal("§aDoor opened"), true);
            }
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
    public void uniqueMethod0_10(Player player, Level level) {
        // Unique method 0 for item 10
        if (level.isClientSide) return;
        BlockPos pos = player.blockPosition();
        level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.7F, 0.50F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 20, 0));
    }
    public void uniqueMethod1_10(Player player, Level level) {
        // Unique method 1 for item 10
        if (level.isClientSide) return;
        BlockPos pos = player.blockPosition();
        level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.7F, 0.55F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 25, 1));
    }
    public void uniqueMethod2_10(Player player, Level level) {
        // Unique method 2 for item 10
        if (level.isClientSide) return;
        BlockPos pos = player.blockPosition();
        level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.7F, 0.60F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 2));
    }
    public void uniqueMethod3_10(Player player, Level level) {
        // Unique method 3 for item 10
        if (level.isClientSide) return;
        BlockPos pos = player.blockPosition();
        level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.7F, 0.65F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 35, 0));
    }
    public void uniqueMethod4_10(Player player, Level level) {
        // Unique method 4 for item 10
        if (level.isClientSide) return;
        BlockPos pos = player.blockPosition();
        level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.7F, 0.70F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 1));
    }
    public void uniqueMethod5_10(Player player, Level level) {
        // Unique method 5 for item 10
        if (level.isClientSide) return;
        BlockPos pos = player.blockPosition();
        level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.7F, 0.75F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 45, 2));
    }
    public void uniqueMethod6_10(Player player, Level level) {
        // Unique method 6 for item 10
        if (level.isClientSide) return;
        BlockPos pos = player.blockPosition();
        level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.7F, 0.80F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0));
    }
    public void uniqueMethod7_10(Player player, Level level) {
        // Unique method 7 for item 10
        if (level.isClientSide) return;
        BlockPos pos = player.blockPosition();
        level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.7F, 0.85F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 55, 1));
    }
    public void uniqueMethod8_10(Player player, Level level) {
        // Unique method 8 for item 10
        if (level.isClientSide) return;
        BlockPos pos = player.blockPosition();
        level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.7F, 0.90F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 2));
    }
    public void uniqueMethod9_10(Player player, Level level) {
        // Unique method 9 for item 10
        if (level.isClientSide) return;
        BlockPos pos = player.blockPosition();
        level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.7F, 0.95F);
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 65, 0));
    }
}
