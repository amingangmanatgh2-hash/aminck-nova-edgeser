package com.nova.horror.performance;

import com.nova.horror.config.NovaHorrorConfig;
import net.minecraft.world.entity.player.Player;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * FpsBoostManager - central FPS boost for 8GB RAM
 * Smart culling, not quality reduction - keeps horror cinematic
 */
public class FpsBoostManager {
    private static final Map<UUID, Long> lastFearEffect = new HashMap<>();
    private static final Map<UUID, Integer> tickSkip = new HashMap<>();

    public static boolean canApplyFearEffect(Player player) {
        try {
            if (player == null) return false;
            UUID id = player.getUUID();
            long now = System.currentTimeMillis();
            Long last = lastFearEffect.get(id);
            if (last == null) {
                lastFearEffect.put(id, now);
                return true;
            }
            if (now - last < NovaHorrorConfig.FEAR_EFFECT_THROTTLE * 50) return false;
            lastFearEffect.put(id, now);
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    public static boolean shouldSkipParticle(Player player) {
        try {
            if (player == null) return false;
            double fpsFactor = 1.0;
            return !ParticleOptimizer.canSpawnParticle(player);
        } catch (Exception e) {
            return false;
        }
    }

    public static void cleanup() {
        if (lastFearEffect.size() > 100) lastFearEffect.clear();
        if (tickSkip.size() > 100) tickSkip.clear();
    }

    public static int getOptimalParticleCount(int fear) {
        if (fear > 80) return 3;
        if (fear > 60) return 2;
        return 1;
    }

    public static boolean isLowRamMode() {
        try {
            Runtime rt = Runtime.getRuntime();
            long maxMem = rt.maxMemory() / (1024*1024);
            return maxMem < 2048;
        } catch (Exception e) {
            return true;
        }
    }
}
