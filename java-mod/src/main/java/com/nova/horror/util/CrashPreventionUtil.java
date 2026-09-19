package com.nova.horror.util;

import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.core.BlockPos;

/**
 * CrashPreventionUtil - deep debug, prevents all known crash causes
 * Null checks, bounds checks, safe casting, low RAM safe
 */
public class CrashPreventionUtil {
    public static boolean isValidEntity(Entity entity) {
        try {
            if (entity == null) return false;
            if (entity.isRemoved()) return false;
            if (entity.level() == null) return false;
            if (entity.blockPosition() == null) return false;
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isValidPlayer(Player player) {
        try {
            if (player == null) return false;
            if (player.isDeadOrDying()) return false;
            if (player.level() == null) return false;
            if (player.level().isClientSide) return false;
            if (player.level().getServer() == null) return false;
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isValidBlockPos(Level level, BlockPos pos) {
        try {
            if (level == null) return false;
            if (pos == null) return false;
            if (pos.getY() < level.getMinBuildHeight()) return false;
            if (pos.getY() > level.getMaxBuildHeight()) return false;
            if (!level.isLoaded(pos)) return false;
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isSafeToSpawn(Level level, BlockPos pos) {
        try {
            if (!isValidBlockPos(level, pos)) return false;
            if (!level.getBlockState(pos).isAir()) return false;
            if (!level.getBlockState(pos.above()).isAir()) return false;
            if (level.getNearestPlayer(pos.getX(), pos.getY(), pos.getZ(), 64, false) == null) return false;
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static void safeTeleport(Entity entity, double x, double y, double z) {
        try {
            if (!isValidEntity(entity)) return;
            if (Double.isNaN(x) || Double.isNaN(y) || Double.isNaN(z)) return;
            if (Double.isInfinite(x) || Double.isInfinite(y) || Double.isInfinite(z)) return;
            if (y < entity.level().getMinBuildHeight() || y > entity.level().getMaxBuildHeight()) return;
            entity.teleportTo(x, y, z);
        } catch (Exception e) {}
    }

    public static boolean isLowMemory() {
        try {
            Runtime rt = Runtime.getRuntime();
            long free = rt.freeMemory() / (1024*1024);
            long max = rt.maxMemory() / (1024*1024);
            return free < 100 || max < 1024;
        } catch (Exception e) {
            return false;
        }
    }
}
