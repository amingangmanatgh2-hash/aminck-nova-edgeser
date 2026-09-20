package com.nova.horror.performance;

import com.nova.horror.config.NovaHorrorConfig;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundSource;
import net.minecraft.world.entity.player.Player;
import net.minecraft.core.BlockPos;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * SoundThrottler - limits sounds per second for 8GB RAM
 * Prevents sound spam when fear high
 */
public class SoundThrottler {
    private static final Map<UUID, Integer> soundCount = new HashMap<>();
    private static final Map<UUID, Long> lastReset = new HashMap<>();
    private static final Map<UUID, Map<String, Long>> lastSoundTime = new HashMap<>();

    public static boolean canPlaySound(Player player, String soundName) {
        if (!NovaHorrorConfig.ENABLE_SOUND_THROTTLING) return true;
        try {
            UUID id = player.getUUID();
            long now = System.currentTimeMillis();
            Long last = lastReset.get(id);
            if (last == null || now - last > 1000) {
                soundCount.put(id, 0);
                lastReset.put(id, now);
            }
            int count = soundCount.getOrDefault(id, 0);
            if (count >= NovaHorrorConfig.MAX_SOUNDS_PER_SECOND) return false;

            Map<String, Long> playerSounds = lastSoundTime.getOrDefault(id, new HashMap<>());
            Long lastThisSound = playerSounds.get(soundName);
            if (lastThisSound != null && now - lastThisSound < 500) return false;

            soundCount.put(id, count + 1);
            playerSounds.put(soundName, now);
            lastSoundTime.put(id, playerSounds);
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    public static void safePlaySound(Player player, SoundEvent sound, SoundSource source, float volume, float pitch) {
        try {
            if (player == null || player.level().isClientSide) return;
            if (!canPlaySound(player, sound.getLocation().toString())) return;
            player.level().playSound(null, player.blockPosition(), sound, source, volume, pitch);
        } catch (Exception e) {}
    }
}
