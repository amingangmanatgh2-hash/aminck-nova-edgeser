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

/** CursedMirror - Shows nearby entities through walls 5 sec but causes blindness after - Real unique logic */
public class CursedMirror extends Item {
    private static final Random RANDOM = new Random();
    public CursedMirror() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            for (var e : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(25))) {
                e.addEffect(new MobEffectInstance(MobEffects.GLOWING, 100, 0));
                e.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 0));
            }
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 100, 0));
            level.playSound(null, player.blockPosition(), SoundEvents.BLOCK_GLASS_BREAK, SoundSource.PLAYERS, 0.7F, 0.5F);
            player.displayClientMessage(Component.literal("§5آینه نفرین شده همه رو نشون داد... ولی چشات تار میشه..."), true);
            player.getCooldowns().addCooldown(this, 300);
            player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 60, 0, false, false));
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
