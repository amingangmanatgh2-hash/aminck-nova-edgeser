package com.nova.horror;

import com.nova.horror.effect.FearEffect;
import com.nova.horror.entity.ModEntities;
import com.nova.horror.item.ModItems;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.TickEvent;
import net.minecraftforge.event.entity.player.PlayerEvent;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.network.chat.Component;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.LightLayer;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.Random;

/**
 * Nova Horror - God-tier horror mod
 * Main mod class for Forge 1.20.1
 * Features:
 * - Fear / Sanity system
 * - Custom entities (Shade, Crawler, Weeper, Forgotten)
 * - Jumpscares, darkness, footsteps
 * - 20 lore items
 */
@Mod("novahorror")
public class NovaHorrorMod {
    public static final String MODID = "novahorror";
    private static final Random RANDOM = new Random();
    
    // Fear system: player UUID -> fear level (0-100)
    private static final Map<UUID, Integer> FEAR_LEVELS = new HashMap<>();
    private static final Map<UUID, Integer> DARK_TICKS = new HashMap<>();
    private static final Map<UUID, Long> LAST_JUMPSCARE = new HashMap<>();

    public NovaHorrorMod() {
        IEventBus modEventBus = FMLJavaModLoadingContext.get().getModEventBus();
        modEventBus.addListener(this::commonSetup);

        ModItems.register(modEventBus);
        ModEntities.register(modEventBus);
        FearEffect.register(modEventBus);

        MinecraftForge.EVENT_BUS.register(this);
        System.out.println("[NovaHorror] Horror mod initialized - Welcome to Ravenshollow...");
    }

    private void commonSetup(final FMLCommonSetupEvent event) {
        System.out.println("[NovaHorror] Common setup - fear system active");
    }

    @SubscribeEvent
    public void onPlayerTick(TickEvent.PlayerTickEvent event) {
        if (event.phase != TickEvent.Phase.END) return;
        if (event.player.level().isClientSide) return;
        if (!(event.player instanceof ServerPlayer serverPlayer)) return;

        Player player = event.player;
        UUID uuid = player.getUUID();
        BlockPos pos = player.blockPosition();
        int light = player.level().getBrightness(LightLayer.BLOCK, pos);
        int skyLight = player.level().getBrightness(LightLayer.SKY, pos);

        // Fear system logic
        int darkTicks = DARK_TICKS.getOrDefault(uuid, 0);
        int fear = FEAR_LEVELS.getOrDefault(uuid, 0);

        boolean isInDark = light < 4 && skyLight < 4;
        boolean isInMansion = isInMansionArea(pos);
        boolean hasHallowedCandle = hasItemNearby(player, "hallowed_candle") || player.getInventory().contains(ModItems.HALLOWED_CANDLE.get().getDefaultInstance());
        boolean hasAmulet = player.getInventory().contains(ModItems.WARDENS_AMULET.get().getDefaultInstance());

        if (isInDark && !hasHallowedCandle) {
            darkTicks++;
            if (darkTicks % 40 == 0) {
                fear = Math.min(100, fear + (isInMansion ? 3 : 1));
                FEAR_LEVELS.put(uuid, fear);
                applyFearEffects(serverPlayer, fear);
            }
            // Random whispers
            if (RANDOM.nextInt(200) == 0) {
                playSpookySound(serverPlayer);
            }
            // Footsteps behind
            if (RANDOM.nextInt(300) == 0 && fear > 30) {
                serverPlayer.level().playSound(null, pos, SoundEvents.ZOMBIE_STEP, SoundSource.AMBIENT, 0.5f, 0.5f);
                serverPlayer.displayClientMessage(Component.literal("§7§o...صدای قدم از پشت سر..."), true);
            }
        } else {
            if (darkTicks > 0) {
                darkTicks = Math.max(0, darkTicks - 2);
                if (darkTicks % 80 == 0 && fear > 0) {
                    fear = Math.max(0, fear - 1);
                    FEAR_LEVELS.put(uuid, fear);
                }
            }
        }
        DARK_TICKS.put(uuid, darkTicks);

        // Jumpscare logic - fear > 70
        if (fear > 70 && !hasAmulet) {
            long last = LAST_JUMPSCARE.getOrDefault(uuid, 0L);
            long now = System.currentTimeMillis();
            if (now - last > 120000 && RANDOM.nextInt(500) == 0) {
                triggerJumpscare(serverPlayer);
                LAST_JUMPSCARE.put(uuid, now);
            }
        }

        // Spirit lantern reveals hidden
        if (player.getMainHandItem().is(ModItems.SPIRIT_LANTERN.get()) || player.getOffhandItem().is(ModItems.SPIRIT_LANTERN.get())) {
            if (RANDOM.nextInt(20) == 0) {
                serverPlayer.level().playSound(null, pos, SoundEvents.AMETHYST_BLOCK_CHIME, SoundSource.BLOCKS, 0.3f, 1.5f);
            }
        }

        // Heart of Dread effects
        if (player.getInventory().contains(ModItems.HEART_OF_DREAD.get().getDefaultInstance())) {
            if (serverPlayer.tickCount % 600 == 0) {
                serverPlayer.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 100, 0));
                serverPlayer.displayClientMessage(Component.literal("§4§lقلب می‌تپد..."), true);
            }
        }
    }

    private void applyFearEffects(ServerPlayer player, int fear) {
        if (fear < 20) return;
        if (fear < 40) {
            if (RANDOM.nextInt(3) == 0)
                player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0, false, false));
        } else if (fear < 60) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0, false, false));
            player.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 0));
        } else if (fear < 80) {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 120, 0));
            player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 100, 0));
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 100, 1));
            if (RANDOM.nextInt(2) == 0) {
                player.displayClientMessage(Component.literal("§8§oنمی‌توانم نفس بکشم..."), true);
            }
        } else {
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 200, 0));
            player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 60, 0));
            player.addEffect(new MobEffectInstance(MobEffects.WITHER, 60, 0));
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 200, 2));
        }
        // Update bossbar or actionbar with fear level
        if (player.tickCount % 40 == 0) {
            String bar = getFearBar(fear);
            player.displayClientMessage(Component.literal("§cترس: " + bar + " §7(" + fear + "%)"), true);
        }
    }

    private String getFearBar(int fear) {
        int filled = fear / 10;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 10; i++) {
            sb.append(i < filled ? "§4█" : "§8░");
        }
        return sb.toString();
    }

    private void triggerJumpscare(ServerPlayer player) {
        // Random jumpscare type
        int type = RANDOM.nextInt(4);
        BlockPos pos = player.blockPosition();
        switch (type) {
            case 0:
                player.level().playSound(null, pos, SoundEvents.WARDEN_HEARTBEAT, SoundSource.HOSTILE, 1.0f, 0.5f);
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0));
                player.displayClientMessage(Component.literal("§4§l§kXXX §r§4§lاو اینجاست! §kXXX"), true);
                break;
            case 1:
                player.level().playSound(null, pos, SoundEvents.GHAST_SCREAM, SoundSource.HOSTILE, 1.0f, 0.3f);
                player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
                break;
            case 2:
                player.level().playSound(null, pos, SoundEvents.AMBIENT_CAVE.get(), SoundSource.AMBIENT, 1.0f, 0.2f);
                player.displayClientMessage(Component.literal("§7§o...الارا... کمکم کن..."), true);
                break;
            case 3:
                // Fake entity behind
                player.level().playSound(null, pos, SoundEvents.ZOMBIE_DEATH, SoundSource.HOSTILE, 0.8f, 0.1f);
                player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 20, 0));
                player.teleportTo(player.getX(), player.getY(), player.getZ()); // small shake effect via teleport
                break;
        }
        // Spawn temporary shade behind player
        if (RANDOM.nextBoolean()) {
            player.server.execute(() -> {
                // Command to summon our custom entity or vanilla with custom name
                player.server.getCommands().performPrefixedCommand(player.server.createCommandSourceStack(),
                    "execute at " + player.getName().getString() + " run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"',Marker:1b,NoGravity:1b}");
            });
        }
    }

    private void playSpookySound(ServerPlayer player) {
        BlockPos pos = player.blockPosition();
        SoundEvents[] spooks = {
            SoundEvents.AMBIENT_CAVE.get(),
            SoundEvents.WARDEN_AMBIENT,
            SoundEvents.SCULK_SHRIEKER_SHRIEK,
            SoundEvents.GHAST_MOAN
        };
        player.level().playSound(null, pos, spooks[RANDOM.nextInt(spooks.length)], SoundSource.AMBIENT, 0.6f, 0.5f + RANDOM.nextFloat() * 0.5f);
    }

    private boolean isInMansionArea(BlockPos pos) {
        // Mansion is at 0,0 with radius 100
        return Math.abs(pos.getX()) < 100 && Math.abs(pos.getZ()) < 100;
    }

    private boolean hasItemNearby(Player player, String itemId) {
        // Check for hallowed candle placed nearby (block)
        BlockPos pos = player.blockPosition();
        for (int x = -10; x <= 10; x++) {
            for (int y = -5; y <= 5; y++) {
                for (int z = -10; z <= 10; z++) {
                    // Simplified check - in real mod would check block entity
                    // For datapack version, we check via command
                }
            }
        }
        return false;
    }

    @SubscribeEvent
    public void onPlayerLogin(PlayerEvent.PlayerLoggedInEvent event) {
        if (event.getEntity() instanceof ServerPlayer player) {
            player.displayClientMessage(Component.literal("§8§l§oبه ریونزهالو خوش آمدی... §7دیگر راه برگشتی نیست."), false);
            player.displayClientMessage(Component.literal("§7قطب‌نمای شکسته‌ات را بررسی کن. عمارت منتظر است."), false);
            FEAR_LEVELS.put(player.getUUID(), 0);
            DARK_TICKS.put(player.getUUID(), 0);
        }
    }
}
