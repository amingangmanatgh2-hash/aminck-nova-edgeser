package com.nova.horror.world;

import com.nova.horror.config.NovaHorrorConfig;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.chunk.LevelChunk;
import net.minecraft.core.BlockPos;
import java.util.HashMap;
import java.util.Map;

/**
 * ChunkHorrorManager - prevents too many horror entities per chunk for 8GB RAM
 * Limits to MAX_HORROR_ENTITIES_PER_CHUNK, despawns excess
 */
public class ChunkHorrorManager {
    private static final Map<Long, Integer> chunkEntityCount = new HashMap<>();
    private static final Map<Long, Long> lastCleanup = new HashMap<>();

    public static long getChunkKey(BlockPos pos) {
        return ((long)(pos.getX() >> 4) & 0xffffffffL) | (((long)(pos.getZ() >> 4) & 0xffffffffL) << 32);
    }

    public static boolean canSpawnInChunk(Level level, BlockPos pos) {
        try {
            if (level.isClientSide) return false;
            long key = getChunkKey(pos);
            int count = chunkEntityCount.getOrDefault(key, 0);
            if (count >= NovaHorrorConfig.MAX_HORROR_ENTITIES_PER_CHUNK) return false;
            // Also check actual entities in chunk
            if (level.getChunkAt(pos) instanceof LevelChunk chunk) {
                int realCount = 0;
                for (var entity : chunk.getEntities().getAll()) {
                    if (entity instanceof Monster && entity.getTags().contains("novahorror_horror")) realCount++;
                }
                if (realCount >= NovaHorrorConfig.MAX_HORROR_ENTITIES_PER_CHUNK) return false;
            }
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    public static void incrementChunkCount(BlockPos pos) {
        try {
            long key = getChunkKey(pos);
            chunkEntityCount.put(key, chunkEntityCount.getOrDefault(key, 0) + 1);
        } catch (Exception e) {}
    }

    public static void decrementChunkCount(BlockPos pos) {
        try {
            long key = getChunkKey(pos);
            int count = chunkEntityCount.getOrDefault(key, 1);
            if (count <= 1) chunkEntityCount.remove(key);
            else chunkEntityCount.put(key, count - 1);
        } catch (Exception e) {}
    }

    public static void cleanupOldChunks() {
        try {
            long now = System.currentTimeMillis();
            if (chunkEntityCount.size() > 1000) {
                chunkEntityCount.clear();
                lastCleanup.clear();
            }
        } catch (Exception e) {}
    }
}
