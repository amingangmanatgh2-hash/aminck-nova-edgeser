package com.nova.horror.client;

/**
 * ShaderLodManager - smart shader LOD for FPS boost without quality loss
 * Near = full quality, Far = optimized, keeps cinematic look
 */
public class ShaderLodManager {
    public static final float NEAR_DISTANCE = 20.0f;
    public static final float MID_DISTANCE = 50.0f;
    public static final float FAR_DISTANCE = 100.0f;

    public static int getLodLevel(float distance) {
        if (distance < NEAR_DISTANCE) return 0;
        if (distance < MID_DISTANCE) return 1;
        return 2;
    }

    public static boolean shouldSkipDust(float distance) {
        return distance > MID_DISTANCE;
    }

    public static boolean shouldSkipGrain(float distance) {
        return distance > FAR_DISTANCE;
    }

    public static boolean shouldUseSimpleFog(float distance) {
        return distance > MID_DISTANCE;
    }

    public static float getFogDensityLod(float baseDensity, float distance, float fear) {
        if (distance < NEAR_DISTANCE) return baseDensity * (1.0f + fear * 0.6f);
        if (distance < MID_DISTANCE) return baseDensity * 0.8f;
        return baseDensity * 0.5f;
    }
}
