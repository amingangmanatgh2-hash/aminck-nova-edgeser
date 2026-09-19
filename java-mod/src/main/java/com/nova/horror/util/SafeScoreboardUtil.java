package com.nova.horror.util;

import net.minecraft.server.MinecraftServer;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.scores.Objective;
import net.minecraft.world.scores.Scoreboard;

/**
 * SafeScoreboardUtil - prevents NPE from scoreboard access
 * All methods null-checked, safe for client/server, low RAM safe
 */
public class SafeScoreboardUtil {
    public static int getFear(Player player) {
        try {
            if (player == null || player.level().isClientSide) return 0;
            MinecraftServer server = player.level().getServer();
            if (server == null) return 0;
            Scoreboard sb = server.getScoreboard();
            Objective obj = sb.getObjective("novahorror.fear");
            if (obj == null) return 0;
            return sb.getOrCreatePlayerScore(player.getScoreboardName(), obj).getScore();
        } catch (Exception e) {
            return 0;
        }
    }

    public static int getSanity(Player player) {
        try {
            if (player == null || player.level().isClientSide) return 100;
            MinecraftServer server = player.level().getServer();
            if (server == null) return 100;
            Scoreboard sb = server.getScoreboard();
            Objective obj = sb.getObjective("novahorror.sanity");
            if (obj == null) return 100;
            return sb.getOrCreatePlayerScore(player.getScoreboardName(), obj).getScore();
        } catch (Exception e) {
            return 100;
        }
    }

    public static void addFear(Player player, int amount) {
        try {
            if (player == null || player.level().isClientSide) return;
            if (amount <= 0) return;
            MinecraftServer server = player.level().getServer();
            if (server == null) return;
            Scoreboard sb = server.getScoreboard();
            Objective obj = sb.getObjective("novahorror.fear");
            if (obj == null) return;
            int current = sb.getOrCreatePlayerScore(player.getScoreboardName(), obj).getScore();
            if (current >= 100) return;
            server.getCommands().performPrefixedCommand(server.createCommandSourceStack().withSuppressedOutput(),
                "scoreboard players add " + player.getScoreboardName() + " novahorror.fear " + Math.min(amount, 100-current));
        } catch (Exception e) {}
    }

    public static void removeFear(Player player, int amount) {
        try {
            if (player == null || player.level().isClientSide) return;
            if (amount <= 0) return;
            MinecraftServer server = player.level().getServer();
            if (server == null) return;
            Scoreboard sb = server.getScoreboard();
            Objective obj = sb.getObjective("novahorror.fear");
            if (obj == null) return;
            int current = sb.getOrCreatePlayerScore(player.getScoreboardName(), obj).getScore();
            if (current <= 0) return;
            server.getCommands().performPrefixedCommand(server.createCommandSourceStack().withSuppressedOutput(),
                "scoreboard players remove " + player.getScoreboardName() + " novahorror.fear " + Math.min(amount, current));
        } catch (Exception e) {}
    }

    public static void removeSanity(Player player, int amount) {
        try {
            if (player == null || player.level().isClientSide) return;
            MinecraftServer server = player.level().getServer();
            if (server == null) return;
            Scoreboard sb = server.getScoreboard();
            Objective obj = sb.getObjective("novahorror.sanity");
            if (obj == null) return;
            int current = sb.getOrCreatePlayerScore(player.getScoreboardName(), obj).getScore();
            if (current <= 0) return;
            server.getCommands().performPrefixedCommand(server.createCommandSourceStack().withSuppressedOutput(),
                "scoreboard players remove " + player.getScoreboardName() + " novahorror.sanity " + Math.min(amount, current));
        } catch (Exception e) {}
    }

    public static boolean isServerSide(Player player) {
        try {
            return player != null && !player.level().isClientSide && player.level().getServer() != null;
        } catch (Exception e) {
            return false;
        }
    }
}
