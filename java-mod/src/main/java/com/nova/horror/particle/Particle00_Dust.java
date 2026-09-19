package com.nova.horror.particle;

import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.core.BlockPos;
import net.minecraft.network.chat.Component;
import java.util.*;

public class Particle00_Dust {
    // Particle00_Dust - Horror implementation - 400 lines
    private static final Random RANDOM = new Random();
    private static final String MODID = "novahorror";
    private Map<UUID, Integer> fearLevels = new HashMap<>();

    public void horrorMethod0(Player player, Level level, BlockPos pos) {
        // Method 0 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 2);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 20) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 40, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 0 triggered fear="+fear), true);
        }
        // Additional horror logic 0
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod1(Player player, Level level, BlockPos pos) {
        // Method 1 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 2);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 21) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 41, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 1 triggered fear="+fear), true);
        }
        // Additional horror logic 1
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod2(Player player, Level level, BlockPos pos) {
        // Method 2 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 2);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 22) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 42, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 2 triggered fear="+fear), true);
        }
        // Additional horror logic 2
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod3(Player player, Level level, BlockPos pos) {
        // Method 3 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 2);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 23) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 43, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 3 triggered fear="+fear), true);
        }
        // Additional horror logic 3
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod4(Player player, Level level, BlockPos pos) {
        // Method 4 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 5);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 24) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 44, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 4 triggered fear="+fear), true);
        }
        // Additional horror logic 4
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod5(Player player, Level level, BlockPos pos) {
        // Method 5 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 3);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 25) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 45, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 5 triggered fear="+fear), true);
        }
        // Additional horror logic 5
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod6(Player player, Level level, BlockPos pos) {
        // Method 6 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 4);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 26) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 46, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 6 triggered fear="+fear), true);
        }
        // Additional horror logic 6
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod7(Player player, Level level, BlockPos pos) {
        // Method 7 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 27) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 47, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 7 triggered fear="+fear), true);
        }
        // Additional horror logic 7
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod8(Player player, Level level, BlockPos pos) {
        // Method 8 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 28) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 48, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 8 triggered fear="+fear), true);
        }
        // Additional horror logic 8
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod9(Player player, Level level, BlockPos pos) {
        // Method 9 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 5);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 29) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 49, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 9 triggered fear="+fear), true);
        }
        // Additional horror logic 9
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod10(Player player, Level level, BlockPos pos) {
        // Method 10 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 30) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 10 triggered fear="+fear), true);
        }
        // Additional horror logic 10
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod11(Player player, Level level, BlockPos pos) {
        // Method 11 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 4);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 31) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 51, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 11 triggered fear="+fear), true);
        }
        // Additional horror logic 11
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod12(Player player, Level level, BlockPos pos) {
        // Method 12 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 32) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 52, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 12 triggered fear="+fear), true);
        }
        // Additional horror logic 12
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod13(Player player, Level level, BlockPos pos) {
        // Method 13 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 2);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 33) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 53, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 13 triggered fear="+fear), true);
        }
        // Additional horror logic 13
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod14(Player player, Level level, BlockPos pos) {
        // Method 14 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 34) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 54, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 14 triggered fear="+fear), true);
        }
        // Additional horror logic 14
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod15(Player player, Level level, BlockPos pos) {
        // Method 15 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 35) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 55, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 15 triggered fear="+fear), true);
        }
        // Additional horror logic 15
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod16(Player player, Level level, BlockPos pos) {
        // Method 16 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 36) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 56, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 16 triggered fear="+fear), true);
        }
        // Additional horror logic 16
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod17(Player player, Level level, BlockPos pos) {
        // Method 17 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 5);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 37) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 57, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 17 triggered fear="+fear), true);
        }
        // Additional horror logic 17
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod18(Player player, Level level, BlockPos pos) {
        // Method 18 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 38) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 58, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 18 triggered fear="+fear), true);
        }
        // Additional horror logic 18
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod19(Player player, Level level, BlockPos pos) {
        // Method 19 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 2);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 39) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 59, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 19 triggered fear="+fear), true);
        }
        // Additional horror logic 19
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod20(Player player, Level level, BlockPos pos) {
        // Method 20 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 5);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 40) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 20 triggered fear="+fear), true);
        }
        // Additional horror logic 20
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod21(Player player, Level level, BlockPos pos) {
        // Method 21 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 5);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 41) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 61, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 21 triggered fear="+fear), true);
        }
        // Additional horror logic 21
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod22(Player player, Level level, BlockPos pos) {
        // Method 22 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 5);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 42) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 62, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 22 triggered fear="+fear), true);
        }
        // Additional horror logic 22
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod23(Player player, Level level, BlockPos pos) {
        // Method 23 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 5);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 43) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 63, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 23 triggered fear="+fear), true);
        }
        // Additional horror logic 23
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod24(Player player, Level level, BlockPos pos) {
        // Method 24 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 4);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 44) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 64, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 24 triggered fear="+fear), true);
        }
        // Additional horror logic 24
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod25(Player player, Level level, BlockPos pos) {
        // Method 25 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 5);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 45) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 65, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 25 triggered fear="+fear), true);
        }
        // Additional horror logic 25
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod26(Player player, Level level, BlockPos pos) {
        // Method 26 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 3);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 46) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 66, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 26 triggered fear="+fear), true);
        }
        // Additional horror logic 26
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod27(Player player, Level level, BlockPos pos) {
        // Method 27 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 47) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 67, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 27 triggered fear="+fear), true);
        }
        // Additional horror logic 27
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod28(Player player, Level level, BlockPos pos) {
        // Method 28 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 48) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 68, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 28 triggered fear="+fear), true);
        }
        // Additional horror logic 28
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod29(Player player, Level level, BlockPos pos) {
        // Method 29 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 2);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 49) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 69, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 29 triggered fear="+fear), true);
        }
        // Additional horror logic 29
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod30(Player player, Level level, BlockPos pos) {
        // Method 30 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 3);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 50) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 70, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 30 triggered fear="+fear), true);
        }
        // Additional horror logic 30
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod31(Player player, Level level, BlockPos pos) {
        // Method 31 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 51) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 71, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 31 triggered fear="+fear), true);
        }
        // Additional horror logic 31
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod32(Player player, Level level, BlockPos pos) {
        // Method 32 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 2);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 52) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 72, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 32 triggered fear="+fear), true);
        }
        // Additional horror logic 32
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod33(Player player, Level level, BlockPos pos) {
        // Method 33 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 4);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 53) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 73, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 33 triggered fear="+fear), true);
        }
        // Additional horror logic 33
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod34(Player player, Level level, BlockPos pos) {
        // Method 34 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 5);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 54) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 74, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 34 triggered fear="+fear), true);
        }
        // Additional horror logic 34
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod35(Player player, Level level, BlockPos pos) {
        // Method 35 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 3);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 55) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 75, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 35 triggered fear="+fear), true);
        }
        // Additional horror logic 35
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod36(Player player, Level level, BlockPos pos) {
        // Method 36 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 56) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 76, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 36 triggered fear="+fear), true);
        }
        // Additional horror logic 36
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod37(Player player, Level level, BlockPos pos) {
        // Method 37 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 3);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 57) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 77, 1));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 37 triggered fear="+fear), true);
        }
        // Additional horror logic 37
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod38(Player player, Level level, BlockPos pos) {
        // Method 38 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 3);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 58) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 78, 2));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 38 triggered fear="+fear), true);
        }
        // Additional horror logic 38
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

    public void horrorMethod39(Player player, Level level, BlockPos pos) {
        // Method 39 for Particle00_Dust - fear logic
        if (level.isClientSide) return;
        int fear = fearLevels.getOrDefault(player.getUUID(), 0);
        fear = Math.min(100, fear + 1);
        fearLevels.put(player.getUUID(), fear);
        if (fear > 59) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 79, 0));
            level.playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 0.8f, 0.5f);
            player.displayClientMessage(Component.literal("§8[Horror] Method 39 triggered fear="+fear), true);
        }
        // Additional horror logic 39
        for (int j=0; j<3; j++) {
            double x = pos.getX() + RANDOM.nextDouble()*10-5;
            double y = pos.getY() + RANDOM.nextDouble()*5;
            double z = pos.getZ() + RANDOM.nextDouble()*10-5;
            // Particle and sound logic
            if (RANDOM.nextInt(100) == 0) {
                level.playSound(null, new BlockPos((int)x, (int)y, (int)z), SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
            }
        }
    }

}
