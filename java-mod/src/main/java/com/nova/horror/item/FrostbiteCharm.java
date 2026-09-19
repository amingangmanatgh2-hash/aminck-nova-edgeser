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

/** FrostbiteCharm - Freezes water and mobs nearby, gives slowness to horror - Real unique logic */
public class FrostbiteCharm extends Item {
    private static final Random RANDOM = new Random();
    public FrostbiteCharm() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
            for (BlockPos p : BlockPos.betweenClosed(player.blockPosition().offset(-5,-2,-5), player.blockPosition().offset(5,2,5))) {
                if (level.getBlockState(p).is(net.minecraft.world.level.block.Blocks.WATER)) {
                    level.setBlock(p, net.minecraft.world.level.block.Blocks.ICE.defaultBlockState(), 3);
                    level.addParticle(net.minecraft.core.particles.ParticleTypes.SNOWFLAKE, p.getX()+0.5, p.getY()+0.5, p.getZ()+0.5, 0, 0.02, 0);
                }
            }
            for (var m : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(8))) {
                m.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 120, 3));
                m.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 120, 1));
                m.setTicksFrozen(100);
            }
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 100, 0));
            level.playSound(null, player.blockPosition(), SoundEvents.GLASS_BREAK, SoundSource.BLOCKS, 0.8F, 1.5F);
            player.displayClientMessage(Component.literal("§bطلسم یخ همه رو منجمد کرد!"), true);
            player.getCooldowns().addCooldown(this, 350);
            if (!player.isCreative()) stack.shrink(1);

        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
