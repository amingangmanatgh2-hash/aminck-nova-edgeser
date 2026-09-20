package com.nova.horror.item;

import com.nova.horror.performance.MemoryLeakFixer;
import com.nova.horror.world.ChunkHorrorManager;
import com.nova.horror.util.SafeScoreboardUtil;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.InteractionResultHolder;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.network.chat.Component;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;

/**
 * StabilityPotion - reduces fear, cleans RAM, gives stability for 8GB
 */
public class StabilityPotion extends Item {
    public StabilityPotion(Properties props) { super(props); }

    @Override
    public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        try {
            if (level.isClientSide) return InteractionResultHolder.success(stack);

            ChunkHorrorManager.cleanupOldChunks();
            MemoryLeakFixer.cleanupOldTempEntities(player);

            SafeScoreboardUtil.removeFear(player, 8);
            player.removeEffect(MobEffects.DARKNESS);
            player.removeEffect(MobEffects.BLINDNESS);
            player.removeEffect(MobEffects.CONFUSION);
            player.addEffect(new MobEffectInstance(MobEffects.REGENERATION, 200, 1, false, false, false));
            player.addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 200, 0, false, false, false));

            level.playSound(null, player.blockPosition(), SoundEvents.BOTTLE_FILL_DRAGONBREATH, SoundSource.PLAYERS, 0.8F, 1.0F);
            player.displayClientMessage(Component.literal("§a[Stability] پایداری +8، ترس -8، RAM تمیز شد"), false);

            if (!player.isCreative()) stack.shrink(1);
            return InteractionResultHolder.success(stack);
        } catch (Exception e) {
            return InteractionResultHolder.fail(stack);
        }
    }
}
