package com.nova.horror.util;

import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.world.phys.AABB;
import java.util.List;

/**
 * EntitySpawnLimiter - prevents entity spam for 8GB RAM
 */
public class EntitySpawnLimiter {
    public static boolean canSpawn(Class<? extends Entity> clazz, Player nearPlayer, double range, int maxCount) {
        try {
            if (nearPlayer == null || nearPlayer.level().isClientSide) return false;
            Level level = nearPlayer.level();
            AABB box = nearPlayer.getBoundingBox().inflate(range);
            List<? extends Entity> list = level.getEntitiesOfClass(clazz, box);
            return list.size() < maxCount;
        } catch (Exception e) {
            return false;
        }
    }

    public static int countEntities(Class<? extends Entity> clazz, Player player, double range) {
        try {
            if (player == null) return 0;
            return player.level().getEntitiesOfClass(clazz, player.getBoundingBox().inflate(range)).size();
        } catch (Exception e) {
            return 0;
        }
    }

    public static void safeAddEntity(Level level, Entity entity) {
        try {
            if (level == null || entity == null) return;
            if (level.isClientSide) return;
            if (level.getNearestPlayer(entity.getX(), entity.getY(), entity.getZ(), 64, false) == null) return;
            level.addFreshEntity(entity);
        } catch (Exception e) {}
    }
}
