package com.nova.horror.performance;

import net.minecraft.server.MinecraftServer;
import net.minecraft.world.entity.player.Player;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * ServerPerformanceMonitor - monitors TPS and adjusts horror spawn rate for 8GB RAM
 * If TPS low, reduces spawns, particles, sounds
 */
public class ServerPerformanceMonitor {
    private static long lastTickTime = System.currentTimeMillis();
    private static double currentTPS = 20.0;
    private static final Map<UUID, Long> playerJoinTime = new HashMap<>();

    public static void onServerTick(MinecraftServer server) {
        try {
            if (server == null) return;
            long now = System.currentTimeMillis();
            long diff = now - lastTickTime;
            if (diff > 0) {
                currentTPS = Math.min(20.0, 1000.0 / Math.max(1, diff) * 20.0);
            }
            lastTickTime = now;
            if (currentTPS < 15.0) {
                // Low TPS - trigger cleanup
                System.gc();
            }
        } catch (Exception e) {}
    }

    public static double getTPS() {
        return currentTPS;
    }

    public static boolean isServerLagging() {
        return currentTPS < 16.0;
    }

    public static boolean shouldReduceSpawns() {
        return currentTPS < 18.0 || CrashPreventionUtil.isLowMemory();
    }

    public static int getAdjustedSpawnRate(int baseRate) {
        if (isServerLagging()) return baseRate * 2;
        if (shouldReduceSpawns()) return (int)(baseRate * 1.5);
        return baseRate;
    }

    public static void onPlayerJoin(Player player) {
        try {
            if (player == null) return;
            playerJoinTime.put(player.getUUID(), System.currentTimeMillis());
        } catch (Exception e) {}
    }

    private static class CrashPreventionUtil {
        static boolean isLowMemory() {
            try {
                Runtime rt = Runtime.getRuntime();
                return rt.freeMemory() < 100 * 1024 * 1024;
            } catch (Exception e) { return false; }
        }
    }
}
