package com.nova.horror.config;

/**
 * NovaHorrorConfig - FPS boost config for 8GB RAM low-end systems
 * No quality loss - smart culling, not texture downgrade
 */
public class NovaHorrorConfig {
    public static final boolean LOW_RAM_MODE = true;
    public static final int MAX_HORROR_ENTITIES_PER_CHUNK = 2;
    public static final int MAX_PARTICLES_PER_TICK = 5;
    public static final int MAX_SOUNDS_PER_SECOND = 2;
    public static final int ENTITY_TICK_DISTANCE = 32;
    public static final int ENTITY_DESPAWN_DISTANCE = 64;
    public static final int ENTITY_AI_THROTTLE_DISTANCE = 48;
    public static final int MAX_TEMP_ENTITIES = 3;
    public static final int TEMP_ENTITY_LIFETIME = 100;
    public static final int FEAR_EFFECT_THROTTLE = 20;
    public static final int DATAPACK_TICK_INTERVAL = 20;
    public static final boolean ENABLE_DISTANCE_CULLING = true;
    public static final boolean ENABLE_PARTICLE_CULLING = true;
    public static final boolean ENABLE_SOUND_THROTTLING = true;
    public static final boolean ENABLE_MEMORY_OPTIMIZATION = true;
    public static final int MAX_FEAR_SPAWNED_BATS = 1;
    public static final int MAX_FEAR_SPAWNED_ZOMBIES = 1;
    public static final double BAT_SPAWN_COOLDOWN = 200;
    public static final double ZOMBIE_SPAWN_COOLDOWN = 300;

    public static boolean shouldTickAI(double distanceToPlayer) {
        if (!ENABLE_DISTANCE_CULLING) return true;
        return distanceToPlayer < ENTITY_AI_THROTTLE_DISTANCE;
    }
    public static boolean shouldFullTick(double distanceToPlayer) {
        if (!ENABLE_DISTANCE_CULLING) return true;
        return distanceToPlayer < ENTITY_TICK_DISTANCE;
    }
    public static int getTickThrottle(double distance) {
        if (distance > 48) return 4;
        if (distance > 32) return 2;
        return 1;
    }
}
