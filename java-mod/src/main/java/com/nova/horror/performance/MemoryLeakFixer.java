package com.nova.horror.performance;

import com.nova.horror.config.NovaHorrorConfig;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ambient.Bat;
import net.minecraft.world.entity.monster.Zombie;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import java.util.List;

/**
 * MemoryLeakFixer - prevents OOM on 8GB RAM
 * Limits temporary entities (bats, zombies from fear) and auto-despawns them
 */
public class MemoryLeakFixer {
    public static int countNearbyBats(Player player, double range) {
        try {
            List<Bat> bats = player.level().getEntitiesOfClass(Bat.class, player.getBoundingBox().inflate(range));
            return bats.size();
        } catch (Exception e) {
            return 0;
        }
    }

    public static int countNearbyZombies(Player player, double range) {
        try {
            List<Zombie> zombies = player.level().getEntitiesOfClass(Zombie.class, player.getBoundingBox().inflate(range));
            int count = 0;
            for (Zombie z : zombies) {
                if (z.getCustomName() != null && z.getCustomName().getString().contains("توهم")) count++;
            }
            return count;
        } catch (Exception e) {
            return 0;
        }
    }

    public static boolean canSpawnBat(Player player) {
        if (countNearbyBats(player, 20) >= NovaHorrorConfig.MAX_FEAR_SPAWNED_BATS) return false;
        return true;
    }

    public static boolean canSpawnZombieHallucination(Player player) {
        if (countNearbyZombies(player, 20) >= NovaHorrorConfig.MAX_FEAR_SPAWNED_ZOMBIES) return false;
        return true;
    }

    public static void cleanupOldTempEntities(Player player) {
        try {
            Level level = player.level();
            if (level.isClientSide) return;
            List<Bat> bats = level.getEntitiesOfClass(Bat.class, player.getBoundingBox().inflate(30));
            for (Bat bat : bats) {
                if (bat.tickCount > NovaHorrorConfig.TEMP_ENTITY_LIFETIME) {
                    if (bat.getCustomName() != null && bat.getCustomName().getString().contains("Fear")) {
                        bat.discard();
                    }
                }
            }
            List<Zombie> zombies = level.getEntitiesOfClass(Zombie.class, player.getBoundingBox().inflate(30));
            for (Zombie z : zombies) {
                if (z.tickCount > NovaHorrorConfig.TEMP_ENTITY_LIFETIME) {
                    if (z.getCustomName() != null && z.getCustomName().getString().contains("توهم")) {
                        z.discard();
                    }
                }
            }
        } catch (Exception e) {
            // safe fail
        }
    }

    public static void safeDiscard(Entity entity) {
        try {
            if (entity != null && !entity.level().isClientSide) {
                entity.discard();
            }
        } catch (Exception e) {}
    }
}
