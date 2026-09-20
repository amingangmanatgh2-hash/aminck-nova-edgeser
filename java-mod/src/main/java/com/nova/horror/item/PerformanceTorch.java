package com.nova.horror.item;

import com.nova.horror.util.SafeScoreboardUtil;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.InteractionResultHolder;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.network.chat.Component;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;

/**
 * PerformanceTorch - places torch that repels horror and boosts FPS by lighting
 */
public class PerformanceTorch extends Item {
    public PerformanceTorch(Properties props) { super(props); }

    @Override
    public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        try {
            if (level.isClientSide) return InteractionResultHolder.success(stack);

            BlockPos pos = player.blockPosition().offset(player.getRandom().nextInt(6)-3, 0, player.getRandom().nextInt(6)-3);
            if (level.getBlockState(pos).isAir() && level.getBlockState(pos.below()).isSolidRender(level, pos.below())) {
                level.setBlock(pos, Blocks.TORCH.defaultBlockState(), 3);
                level.playSound(null, pos, SoundEvents.TORCH_PLACE, SoundSource.BLOCKS, 1.0F, 1.0F);

                // Light reduces fear and improves FPS (less fog calc)
                SafeScoreboardUtil.removeFear(player, 2);
                player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 400, 0, false, false, false));
                player.displayClientMessage(Component.literal("§e[Performance Torch] نور = FPS بیشتر، ترس کمتر"), true);

                // Repel nearby horror
                var horrors = level.getEntitiesOfClass(net.minecraft.world.entity.monster.Monster.class, player.getBoundingBox().inflate(10));
                for (var h : horrors) {
                    if (h.getTags().contains("novahorror_horror")) {
                        double dx = h.getX() - pos.getX();
                        double dz = h.getZ() - pos.getZ();
                        double len = Math.sqrt(dx*dx + dz*dz);
                        if (len > 0) {
                            h.setDeltaMovement(dx/len*0.5, 0.2, dz/len*0.5);
                        }
                    }
                }
            }

            if (!player.isCreative()) stack.shrink(1);
            return InteractionResultHolder.success(stack);
        } catch (Exception e) {
            return InteractionResultHolder.fail(stack);
        }
    }
}
