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

/** NightVisionGoggles - Gives long night vision but makes you see hallucinations - Real unique logic */
public class NightVisionGoggles extends Item {
    private static final Random RANDOM = new Random();
    public NightVisionGoggles() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 600, 0));
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 600, 0));
            // Hallucination cost
            for (int i=0;i<3;i++) {
                double x = player.getX()+level.random.nextDouble()*20-10;
                double y = player.getY()+level.random.nextDouble()*4;
                double z = player.getZ()+level.random.nextDouble()*20-10;
                var bat = new net.minecraft.world.entity.ambient.Bat(net.minecraft.world.entity.EntityType.BAT, level);
                bat.moveTo(x,y,z);
                bat.setCustomName(Component.literal("§8توهم عینک"));
                bat.setNoGravity(true);
                level.addFreshEntity(bat);
            }
            level.playSound(null, player.blockPosition(), SoundEvents.ENTITY_ITEM_FRAME_REMOVE_ITEM, SoundSource.PLAYERS, 1.0F, 1.0F);
            player.displayClientMessage(Component.literal("§aعینک دید در شب فعال شد... ولی توهم می‌بینی..."), true);
            player.getCooldowns().addCooldown(this, 650);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
