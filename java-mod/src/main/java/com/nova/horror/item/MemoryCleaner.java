package com.nova.horror.item;

import com.nova.horror.performance.MemoryLeakFixer;
import com.nova.horror.performance.FpsBoostManager;
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
 * MemoryCleaner - cleans RAM for 8GB systems, removes excess horror entities
 */
public class MemoryCleaner extends Item {
    public MemoryCleaner(Properties props) { super(props); }

    @Override
    public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        try {
            if (level.isClientSide) return InteractionResultHolder.success(stack);

            // Clean chunk manager
            ChunkHorrorManager.cleanupOldChunks();
            MemoryLeakFixer.cleanupOldTempEntities(player);

            // Remove excess horror entities within 30 blocks for FPS
            int removed = 0;
            try {
                var entities = level.getEntitiesOfClass(net.minecraft.world.entity.monster.Monster.class, player.getBoundingBox().inflate(30));
                for (var e : entities) {
                    if (e.getTags().contains("novahorror_horror") && removed < 3) {
                        if (e.distanceTo(player) > 15) {
                            e.discard();
                            removed++;
                        }
                    }
                }
            } catch (Exception e) {}

            // Force GC hint
            System.gc();

            SafeScoreboardUtil.removeFear(player, 3);
            player.addEffect(new MobEffectInstance(MobEffects.REGENERATION, 100, 0, false, false, false));

            level.playSound(null, player.blockPosition(), SoundEvents.BEACON_DEACTIVATE, SoundSource.PLAYERS, 0.7F, 1.5F);
            player.displayClientMessage(Component.literal("§a[Memory Cleaner] " + removed + " موجود اضافی حذف شد، RAM آزاد شد - FPS Boost فعال"), false);

            if (!player.isCreative()) stack.shrink(1);
            return InteractionResultHolder.success(stack);
        } catch (Exception e) {
            return InteractionResultHolder.fail(stack);
        }
    }
}
