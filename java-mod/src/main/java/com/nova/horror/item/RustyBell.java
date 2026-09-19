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

/** RustyBell - Rings bell, stuns all horror in 20 blocks, reveals location - Real unique logic */
public class RustyBell extends Item {
    private static final Random RANDOM = new Random();
    public RustyBell() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            for (var m : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(20))) {
                m.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 80, 4));
                m.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 80, 1));
                m.getNavigation().stop();
                m.addEffect(new MobEffectInstance(MobEffects.GLOWING, 80, 0));
                level.addParticle(net.minecraft.core.particles.ParticleTypes.NOTE, m.getX(), m.getY()+2, m.getZ(), 0, 0.1, 0);
            }
            level.playSound(null, player.blockPosition(), SoundEvents.BLOCK_BELL_USE, SoundSource.BLOCKS, 1.5F, 0.5F);
            level.playSound(null, player.blockPosition(), SoundEvents.BLOCK_BELL_RESONATE, SoundSource.BLOCKS, 1.0F, 0.6F);
            player.displayClientMessage(Component.literal("§6زنگ زنگ زد! همه موجودات 4 ثانیه گیج شدن!"), true);
            player.getCooldowns().addCooldown(this, 400);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
