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

/** HeartOfDread - Beats every 30 sec, gives Darkness, makes mobs flee - Real unique */
public class HeartOfDread extends Item {
    private static final Random RANDOM = new Random();
    public HeartOfDread() { super(new Properties().stacksTo(1).rarity(Rarity.EPIC)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
        player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 100, 0));
        player.displayClientMessage(Component.literal("§4§lقلب می‌تپد... §7" + level.getGameTime()), true);
        level.playSound(null, player.blockPosition(), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0F, 0.5F);
        for (var mob : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(15))) {
            double dx = mob.getX() - player.getX();
            double dz = mob.getZ() - player.getZ();
            mob.setDeltaMovement(dx*0.35, 0.25, dz*0.35);
            mob.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 0));
                }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
