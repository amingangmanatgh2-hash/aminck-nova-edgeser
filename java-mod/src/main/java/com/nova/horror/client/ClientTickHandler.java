package com.nova.horror.client;

import com.nova.horror.config.NovaHorrorConfig;
import com.nova.horror.performance.MemoryLeakFixer;
import com.nova.horror.performance.ParticleOptimizer;
import net.minecraft.world.entity.player.Player;

/**
 * ClientTickHandler - client side FPS boost, memory cleanup
 */
public class ClientTickHandler {
    private static int tickCounter = 0;

    public static void onClientTick(Player player) {
        try {
            if (player == null) return;
            tickCounter++;
            if (tickCounter % 100 == 0) {
                MemoryLeakFixer.cleanupOldTempEntities(player);
            }
            if (tickCounter % 200 == 0) {
                ParticleOptimizer.resetCounts();
            }
            if (tickCounter >= 1000) tickCounter = 0;
        } catch (Exception e) {}
    }

    public static boolean shouldThrottle(int interval) {
        return tickCounter % interval != 0;
    }
}
