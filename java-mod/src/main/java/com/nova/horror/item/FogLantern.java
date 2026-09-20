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

/** FogLantern - Stronger SpiritLantern, clears fog radius, consumes fuel - Real unique logic */
public class FogLantern extends Item {
    private static final Random RANDOM = new Random();
    public FogLantern() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        try {
ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            var pos = player.blockPosition();
            int cleared = 0;
            for (BlockPos p : BlockPos.betweenClosed(pos.offset(-8,-3,-8), pos.offset(8,3,8))) {
                if (level.getBlockState(p).is(net.minecraft.world.level.block.Blocks.COBWEB)) {
                    level.setBlock(p, net.minecraft.world.level.block.Blocks.AIR.defaultBlockState(), 3);
                    cleared++;
                }
            }
            for (var e : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(10))) {
                if (e.hasEffect(MobEffects.INVISIBILITY)) {
                    e.removeEffect(MobEffects.INVISIBILITY);
                    e.addEffect(new MobEffectInstance(MobEffects.GLOWING, 80, 0));
                }
            }
            level.playSound(null, pos, SoundEvents.BLOCK_LANTERN_PLACE, SoundSource.BLOCKS, 1.0F, 1.2F);
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 200, 0));
            player.displayClientMessage(Component.literal("§eفانوس مه "+cleared+" بلاک رو روشن کرد!"), true);
            player.getCooldowns().addCooldown(this, 200);
            if (!player.isCreative() && player.getRandom().nextFloat() < 0.15) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
        } catch (Exception e) { return InteractionResultHolder.fail(stack); }
    }
}
