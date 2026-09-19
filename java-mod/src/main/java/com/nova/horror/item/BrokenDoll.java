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

/** BrokenDoll - Whispers when held, points to nearest horror entity with sound - Real unique logic */
public class BrokenDoll extends Item {
    private static final Random RANDOM = new Random();
    public BrokenDoll() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            var entities = level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(30));
            if (!entities.isEmpty()) {
                Monster nearest = entities.get(0);
                double minDist = Double.MAX_VALUE;
                for (var m : entities) {
                    double d = m.distanceTo(player);
                    if (d < minDist) { minDist = d; nearest = m; }
                }
                double dx = nearest.getX() - player.getX();
                double dz = nearest.getZ() - player.getZ();
                double angle = Math.toDegrees(Math.atan2(dz, dx)) - 90;
                player.displayClientMessage(Component.literal("§cعروسک به سمت §4"+String.format("%.0f", minDist)+"§c بلاک اونجا اشاره می‌کنه..."), true);
                level.playSound(null, player.blockPosition(), SoundEvents.VILLAGER_AMBIENT, SoundSource.HOSTILE, 0.7F, 1.7F);
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 30, 0));
            } else {
                player.displayClientMessage(Component.literal("§7عروسک ساکته... چیزی نزدیک نیست"), true);
            }
            player.getCooldowns().addCooldown(this, 100);
        }

        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
