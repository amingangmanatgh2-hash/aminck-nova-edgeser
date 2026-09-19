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

/** EmberHeart - Fire resistance + lights nearby torches + burns horror - Real unique logic */
public class EmberHeart extends Item {
    private static final Random RANDOM = new Random();
    public EmberHeart() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
            player.addEffect(new MobEffectInstance(MobEffects.FIRE_RESISTANCE, 400, 0));
            player.addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 200, 0));
            for (BlockPos p : BlockPos.betweenClosed(player.blockPosition().offset(-8,-3,-8), player.blockPosition().offset(8,3,8))) {
                if (level.getBlockState(p).is(net.minecraft.world.level.block.Blocks.AIR)) {
                    // Try place torch if dark
                    if (level.getBrightness(net.minecraft.world.level.LightLayer.BLOCK, p) < 4 && level.random.nextFloat()<0.05) {
                        level.setBlock(p, net.minecraft.world.level.block.Blocks.TORCH.defaultBlockState(), 3);
                    }
                }
            }
            for (var m : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(8))) {
                m.setSecondsOnFire(5);
                m.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 0));
            }
            level.playSound(null, player.blockPosition(), SoundEvents.FIRECHARGE_USE, SoundSource.PLAYERS, 1.0F, 1.0F);
            player.displayClientMessage(Component.literal("§6قلب اخگر گرمات کرد و موجودات رو سوزوند!"), true);
            player.getCooldowns().addCooldown(this, 300);
            if (!player.isCreative() && level.random.nextFloat()<0.15) stack.shrink(1);

        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
