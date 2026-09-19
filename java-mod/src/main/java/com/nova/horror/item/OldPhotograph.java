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

/** OldPhotograph - Reveals hidden rooms when used near walls - Real unique logic */
public class OldPhotograph extends Item {
    private static final Random RANDOM = new Random();
    public OldPhotograph() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            BlockPos pos = player.blockPosition();
            int found = 0;
            for (BlockPos p : BlockPos.betweenClosed(pos.offset(-6,-3,-6), pos.offset(6,3,6))) {
                var state = level.getBlockState(p);
                if (state.is(net.minecraft.world.level.block.Blocks.BARRIER) || state.is(net.minecraft.world.level.block.Blocks.LIGHT)) {
                    level.setBlock(p, net.minecraft.world.level.block.Blocks.AIR.defaultBlockState(), 3);
                    level.addParticle(net.minecraft.core.particles.ParticleTypes.WITCH, p.getX()+0.5, p.getY()+0.5, p.getZ()+0.5, 0, 0.05, 0);
                    found++;
                }
            }
            if (found>0) {
                player.displayClientMessage(Component.literal("§aعکس قدیمی "+found+" دیوار مخفی رو نشون داد!"), true);
                level.playSound(null, pos, SoundEvents.ENTITY_ITEM_FRAME_REMOVE_ITEM, SoundSource.PLAYERS, 1.0F, 0.6F);
            } else {
                player.displayClientMessage(Component.literal("§7عکس چیزی نشون نمیده... شاید جای دیگه..."), true);
            }
            player.getCooldowns().addCooldown(this, 150);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
