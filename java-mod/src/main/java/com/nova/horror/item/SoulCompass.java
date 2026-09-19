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

/** SoulCompass - Points to mansion door 0,70,0, spins when fear high - Real unique logic */
public class SoulCompass extends Item {
    private static final Random RANDOM = new Random();
    public SoulCompass() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            BlockPos mansion = new BlockPos(0, 70, 0);
            double dx = mansion.getX() - player.getX();
            double dz = mansion.getZ() - player.getZ();
            double dist = Math.sqrt(dx*dx+dz*dz);
            double ang = Math.toDegrees(Math.atan2(dz, dx));
            int fear = 0;
            if (level.getServer()!=null) {
                var obj = level.getServer().getScoreboard().getObjective("novahorror.fear");
                if (obj!=null) fear = level.getServer().getScoreboard().getOrCreatePlayerScore(player.getName().getString(), obj).getScore();
            }
            if (fear > 70) {
                player.displayClientMessage(Component.literal("§cقطب‌نما دیوانه‌وار می‌چرخه! ترست خیلی بالاست!"), true);
                level.playSound(null, player.blockPosition(), SoundEvents.COMPASS_LOCK, SoundSource.PLAYERS, 1.0F, 0.3F);
                player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 60, 0));
            } else {
                player.displayClientMessage(Component.literal("§aعمارت §7"+String.format("%.0f", dist)+"§a بلاک اونورتره - زاویه "+String.format("%.0f", ang)), true);
                level.playSound(null, player.blockPosition(), SoundEvents.COMPASS_LOCK, SoundSource.PLAYERS, 0.8F, 1.0F);
            }
            player.getCooldowns().addCooldown(this, 60);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
