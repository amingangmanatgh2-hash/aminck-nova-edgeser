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

/** NightmareFuel - Increases fear but gives strength and speed - Real unique logic */
public class NightmareFuel extends Item {
    private static final Random RANDOM = new Random();
    public NightmareFuel() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            player.addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 300, 1));
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 300, 1));
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 300, 0));
            if (level.getServer()!=null) level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+player.getName().getString()+" novahorror.fear 15");
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0));
            level.playSound(null, player.blockPosition(), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0F, 0.6F);
            player.displayClientMessage(Component.literal("§4سوخت کابوس قدرت داد ولی ترس 15 تا رفت بالا!"), true);
            player.getCooldowns().addCooldown(this, 400);
            if (!player.isCreative()) stack.shrink(1);
        }

        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
