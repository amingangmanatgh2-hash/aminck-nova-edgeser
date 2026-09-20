package com.nova.horror.client;

import com.nova.horror.config.NovaHorrorConfig;
import com.nova.horror.performance.FpsBoostManager;
import net.minecraft.client.Minecraft;
import net.minecraft.network.chat.Component;

/**
 * FpsHudOverlay - shows FPS boost status for 8GB RAM systems
 * No quality loss indicator, shows smart culling active
 */
public class FpsHudOverlay {
    private static int tickCounter = 0;
    private static String lastStatus = "";

    public static void onClientTick() {
        try {
            tickCounter++;
            if (tickCounter % 200 != 0) return;
            Minecraft mc = Minecraft.getInstance();
            if (mc == null || mc.player == null) return;
            if (mc.options.renderDebug) return;

            Runtime rt = Runtime.getRuntime();
            long usedMB = (rt.totalMemory() - rt.freeMemory()) / (1024*1024);
            long maxMB = rt.maxMemory() / (1024*1024);
            boolean lowRam = FpsBoostManager.isLowRamMode();

            String status = String.format("Nova Horror FPS Boost: %s | RAM %d/%d MB | Culling %s",
                lowRam ? "LOW RAM MODE" : "OPTIMIZED",
                usedMB, maxMB,
                NovaHorrorConfig.ENABLE_DISTANCE_CULLING ? "ON" : "OFF"
            );
            lastStatus = status;

            if (tickCounter % 1000 == 0 && usedMB > maxMB * 0.8) {
                mc.player.displayClientMessage(Component.literal("§e[§c!§e] RAM بالا! سیستم FPS Boost فعال شد - موجودات دور cull میشن"), false);
            }
        } catch (Exception e) {}
    }

    public static String getStatus() {
        return lastStatus;
    }

    public static boolean isFpsBoostActive() {
        return NovaHorrorConfig.ENABLE_DISTANCE_CULLING && FpsBoostManager.isLowRamMode();
    }
}
