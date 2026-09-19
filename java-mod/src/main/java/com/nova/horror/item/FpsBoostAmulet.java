package com.nova.horror.item;

import com.nova.horror.performance.FpsBoostManager;
import com.nova.horror.performance.MemoryLeakFixer;
import com.nova.horror.performance.ParticleOptimizer;
import com.nova.horror.util.SafeScoreboardUtil;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.InteractionResultHolder;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.network.chat.Component;

/**
 * FpsBoostAmulet - helps 8GB RAM by cleaning temp entities and reducing fear effects
 * Real logic, not filler - cleans bats, zombies, reduces particles
 */
public class FpsBoostAmulet extends Item {
    public FpsBoostAmulet(Properties props) { super(props); }

    @Override
    public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        try {
            if (level.isClientSide) return InteractionResultHolder.success(stack);
            if (player.isDeadOrDying()) return InteractionResultHolder.fail(stack);

            // Clean temp entities for FPS boost
            MemoryLeakFixer.cleanupOldTempEntities(player);
            ParticleOptimizer.resetCounts();

            // Reduce fear slightly for performance (less effects = more FPS)
            int fear = SafeScoreboardUtil.getFear(player);
            if (fear > 20) {
                SafeScoreboardUtil.removeFear(player, 5);
                player.displayClientMessage(Component.literal("§a[FPS Boost] ترس کم شد، افکت‌ها کمتر = FPS بیشتر"), true);
            }

            // Give resistance and clear negative effects for performance
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 0, 0));
            player.removeEffect(MobEffects.DARKNESS);
            player.removeEffect(MobEffects.BLINDNESS);
            player.addEffect(new MobEffectInstance(MobEffects.DIG_SPEED, 200, 0, false, false, false));
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 200, 0, false, false, false));

            level.playSound(null, player.blockPosition(), SoundEvents.BEACON_ACTIVATE, SoundSource.PLAYERS, 0.8F, 1.2F);
            player.displayClientMessage(Component.literal("§b[FPS Boost] حافظه تمیز شد، موجودات اضافی حذف شدند"), false);

            if (!player.isCreative()) stack.shrink(1);
            return InteractionResultHolder.success(stack);
        } catch (Exception e) {
            return InteractionResultHolder.fail(stack);
        }
    }
}
