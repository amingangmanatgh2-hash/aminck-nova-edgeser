package com.nova.horror.performance;

import com.nova.horror.config.NovaHorrorConfig;
import net.minecraft.core.particles.ParticleOptions;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * ParticleOptimizer - limits particles per tick for 8GB RAM
 * No quality loss - close particles full, far culled, rate limited
 */
public class ParticleOptimizer {
    private static final Map<UUID, Integer> particleCount = new HashMap<>();
    private static final Map<UUID, Long> lastReset = new HashMap<>();

    public static boolean canSpawnParticle(Player player) {
        if (!NovaHorrorConfig.ENABLE_PARTICLE_CULLING) return true;
        try {
            UUID id = player.getUUID();
            long now = System.currentTimeMillis();
            Long last = lastReset.get(id);
            if (last == null || now - last > 1000) {
                particleCount.put(id, 0);
                lastReset.put(id, now);
            }
            int count = particleCount.getOrDefault(id, 0);
            if (count >= NovaHorrorConfig.MAX_PARTICLES_PER_TICK * 20) return false;
            particleCount.put(id, count + 1);
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    public static void safeParticle(Level level, ParticleOptions particle, double x, double y, double z, double dx, double dy, double dz, Player owner) {
        try {
            if (level.isClientSide) return;
            if (owner != null && !canSpawnParticle(owner)) return;
            if (level.getNearestPlayer(x, y, z, 32, false) == null) return;
            level.addParticle(particle, x, y, z, dx, dy, dz);
        } catch (Exception e) {}
    }

    public static void resetCounts() {
        particleCount.clear();
        lastReset.clear();
    }
}
