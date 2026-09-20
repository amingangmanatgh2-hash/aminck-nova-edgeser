package com.nova.horror.item;

import com.nova.horror.util.SafeScoreboardUtil;
import com.nova.horror.world.ChunkHorrorManager;
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
 * LowLatencyCompass - points to nearest horror and shows performance info
 */
public class LowLatencyCompass extends Item {
    public LowLatencyCompass(Properties props) { super(props); }

    @Override
    public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        try {
            if (level.isClientSide) return InteractionResultHolder.success(stack);

            var nearest = level.getNearestEntity(net.minecraft.world.entity.monster.Monster.class, 
                e -> e.getTags().contains("novahorror_horror"), player, player.getX(), player.getY(), player.getZ(), player.getBoundingBox().inflate(50));

            if (nearest != null) {
                double dx = nearest.getX() - player.getX();
                double dz = nearest.getZ() - player.getZ();
                double dist = Math.sqrt(dx*dx + dz*dz);
                double angle = Math.toDegrees(Math.atan2(dz, dx)) - player.getYRot();
                String dir = getDirection(angle);

                player.displayClientMessage(Component.literal("§c[Compass] نزدیکترین ترس: " + dir + " " + (int)dist + " بلاک"), false);
                player.addEffect(new MobEffectInstance(MobEffects.GLOWING, 100, 0, false, false, false));
                nearest.addEffect(new MobEffectInstance(MobEffects.GLOWING, 100, 0, false, false, false));

                // Performance info
                Runtime rt = Runtime.getRuntime();
                long used = (rt.totalMemory() - rt.freeMemory()) / (1024*1024);
                long max = rt.maxMemory() / (1024*1024);
                player.displayClientMessage(Component.literal("§b[Perf] RAM: " + used + "/" + max + " MB | چانک: " + ChunkHorrorManager.getChunkKey(player.blockPosition())), false);

            } else {
                player.displayClientMessage(Component.literal("§a[Compass] هیچ ترسی نزدیک نیست - امن"), false);
                SafeScoreboardUtil.removeFear(player, 1);
            }

            level.playSound(null, player.blockPosition(), SoundEvents.LODESTONE_COMPASS_LOCK, SoundSource.PLAYERS, 0.8F, 1.2F);

            return InteractionResultHolder.success(stack);
        } catch (Exception e) {
            return InteractionResultHolder.fail(stack);
        }
    }

    private String getDirection(double angle) {
        angle = (angle % 360 + 360) % 360;
        if (angle < 22.5 || angle >= 337.5) return "جنوب";
        if (angle < 67.5) return "جنوب غربی";
        if (angle < 112.5) return "غرب";
        if (angle < 157.5) return "شمال غربی";
        if (angle < 202.5) return "شمال";
        if (angle < 247.5) return "شمال شرقی";
        if (angle < 292.5) return "شرق";
        return "جنوب شرقی";
    }
}
