package com.nova.horror.performance;

import com.nova.horror.config.NovaHorrorConfig;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import java.util.List;

/**
 * EntityCullingSystem - smart culling for 8GB RAM
 * Entities far from player don't tick heavy AI, reduces CPU and RAM
 * No quality loss - close entities full quality
 */
public class EntityCullingSystem {
    public static boolean shouldSkipTick(LivingEntity entity) {
        if (entity.level().isClientSide) return false;
        Level level = entity.level();
        Player nearest = level.getNearestPlayer(entity, NovaHorrorConfig.ENTITY_DESPAWN_DISTANCE);
        if (nearest == null) return true;
        double dist = entity.distanceTo(nearest);
        if (dist > NovaHorrorConfig.ENTITY_DESPAWN_DISTANCE) {
            return entity.tickCount % 4 != 0;
        }
        if (dist > NovaHorrorConfig.ENTITY_TICK_DISTANCE) {
            return entity.tickCount % NovaHorrorConfig.getTickThrottle(dist) != 0;
        }
        return false;
    }

    public static boolean isPlayerNearby(LivingEntity entity, double range) {
        if (entity.level().isClientSide) return true;
        try {
            List<? extends Player> players = entity.level().getEntitiesOfClass(Player.class, entity.getBoundingBox().inflate(range));
            return !players.isEmpty();
        } catch (Exception e) {
            return true;
        }
    }

    public static Player getNearestPlayerSafe(LivingEntity entity, double range) {
        try {
            return entity.level().getNearestPlayer(entity, range);
        } catch (Exception e) {
            return null;
        }
    }

    public static double distanceToNearestPlayer(LivingEntity entity) {
        Player p = getNearestPlayerSafe(entity, 128);
        if (p == null) return 999;
        try {
            return entity.distanceTo(p);
        } catch (Exception e) {
            return 999;
        }
    }

    public static boolean shouldDespawn(LivingEntity entity) {
        if (entity.level().isClientSide) return false;
        double dist = distanceToNearestPlayer(entity);
        return dist > 96 && entity.tickCount > 6000;
    }
}
