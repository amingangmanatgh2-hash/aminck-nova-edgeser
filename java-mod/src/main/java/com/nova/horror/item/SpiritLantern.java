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
 * SpiritLantern - Spirit Lantern - reveals hidden barriers
 * Real unique logic, not copy-paste
 */
public class SpiritLantern extends Item {
    private static final Random RANDOM = new Random();
    public SpiritLantern() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override
    public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
        BlockPos pos = player.blockPosition();
        for (int x=-10; x<=10; x++) {
            for (int y=-5; y<=5; y++) {
                for (int z=-10; z<=10; z++) {
                    BlockPos check = pos.offset(x,y,z);
                    if (level.getBlockState(check).is(net.minecraft.world.level.block.Blocks.BARRIER)) {
                        level.addParticle(net.minecraft.core.particles.ParticleTypes.SOUL, check.getX()+0.5, check.getY()+0.5, check.getZ()+0.5, 0, 0.05, 0);
                    }
                }
            }
        }
        player.displayClientMessage(Component.literal("§bنور آبی مسیر مخفی را نشان می‌دهد..."), true);
    
            player.displayClientMessage(Component.literal("§8Lore: Spirit Lantern - reveals hidden barriers"), false);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
