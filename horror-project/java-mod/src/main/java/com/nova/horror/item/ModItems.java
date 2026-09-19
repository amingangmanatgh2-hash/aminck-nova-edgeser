package com.nova.horror.item;

import com.nova.horror.NovaHorrorMod;
import net.minecraft.world.item.*;
import net.minecraft.world.item.Rarity;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

public class ModItems {
    public static final DeferredRegister<Item> ITEMS = DeferredRegister.create(ForgeRegistries.ITEMS, NovaHorrorMod.MODID);

    // 20 lore items
    public static final RegistryObject<Item> RUSTED_MANSION_KEY = ITEMS.register("rusted_mansion_key",
        () -> new Item(new Item.Properties().stacksTo(1).rarity(Rarity.UNCOMMON)));

    public static final RegistryObject<Item> HEART_OF_DREAD = ITEMS.register("heart_of_dread",
        () -> new Item(new Item.Properties().stacksTo(1).rarity(Rarity.EPIC).fireResistant()));

    public static final RegistryObject<Item> WARDENS_AMULET = ITEMS.register("wardens_amulet",
        () -> new WardenAmuletItem(new Item.Properties().stacksTo(1).rarity(Rarity.RARE)));

    public static final RegistryObject<Item> SPIRIT_LANTERN = ITEMS.register("spirit_lantern",
        () -> new SpiritLanternItem(new Item.Properties().stacksTo(1).rarity(Rarity.RARE)));

    public static final RegistryObject<Item> SILAS_DIARY = ITEMS.register("silas_diary",
        () -> new Item(new Item.Properties().stacksTo(1).rarity(Rarity.UNCOMMON)));

    public static final RegistryObject<Item> TORN_PHOTO = ITEMS.register("torn_photo",
        () -> new Item(new Item.Properties().stacksTo(16)));

    public static final RegistryObject<Item> RITUAL_DAGGER = ITEMS.register("ritual_dagger",
        () -> new SwordItem(Tiers.IRON, 3, -2.0f, new Item.Properties().rarity(Rarity.UNCOMMON)));

    public static final RegistryObject<Item> HALLOWED_CANDLE = ITEMS.register("hallowed_candle",
        () -> new HallowedCandleItem(new Item.Properties().stacksTo(16).rarity(Rarity.UNCOMMON)));

    public static final RegistryObject<Item> CRYPT_KEY = ITEMS.register("crypt_key",
        () -> new Item(new Item.Properties().stacksTo(1).rarity(Rarity.RARE)));

    public static final RegistryObject<Item> WHISPERING_SKULL = ITEMS.register("whispering_skull",
        () -> new WhisperingSkullItem(new Item.Properties().stacksTo(1).rarity(Rarity.EPIC)));

    public static final RegistryObject<Item> BLOOD_SIGIL = ITEMS.register("blood_sigil",
        () -> new Item(new Item.Properties().stacksTo(1).rarity(Rarity.RARE)));

    public static final RegistryObject<Item> ROTTED_ROPE = ITEMS.register("rotted_rope",
        () -> new Item(new Item.Properties().stacksTo(16)));

    public static final RegistryObject<Item> BROKEN_COMPASS = ITEMS.register("broken_compass",
        () -> new BrokenCompassItem(new Item.Properties().stacksTo(1).rarity(Rarity.UNCOMMON)));

    public static final RegistryObject<Item> SCARECROW_MASK = ITEMS.register("scarecrow_mask",
        () -> new ArmorItem(ArmorMaterials.LEATHER, ArmorItem.Type.HELMET, new Item.Properties().rarity(Rarity.UNCOMMON)));

    public static final RegistryObject<Item> ELIXIR_FORGETTING = ITEMS.register("elixir_forgetting",
        () -> new ElixirItem(new Item.Properties().stacksTo(8).rarity(Rarity.RARE).food(new net.minecraft.world.food.FoodProperties.Builder().alwaysEat().nutrition(0).saturationMod(0).build())));

    public static final RegistryObject<Item> BLACK_MIRROR_SHARD = ITEMS.register("black_mirror_shard",
        () -> new BlackMirrorShardItem(new Item.Properties().stacksTo(1).rarity(Rarity.RARE)));

    public static final RegistryObject<Item> PLEA_LETTER = ITEMS.register("plea_letter",
        () -> new Item(new Item.Properties().stacksTo(1)));

    public static final RegistryObject<Item> MINESHAFT_KEY = ITEMS.register("mineshaft_key",
        () -> new Item(new Item.Properties().stacksTo(1).rarity(Rarity.UNCOMMON)));

    public static final RegistryObject<Item> CURSED_BONE = ITEMS.register("cursed_bone",
        () -> new Item(new Item.Properties().stacksTo(64).rarity(Rarity.UNCOMMON)));

    public static final RegistryObject<Item> CROWN_THORNS = ITEMS.register("crown_thorns",
        () -> new CrownThornsItem(ArmorMaterials.CHAIN, ArmorItem.Type.HELMET, new Item.Properties().rarity(Rarity.EPIC)));

    public static void register(IEventBus eventBus) {
        ITEMS.register(eventBus);
    }

    // Custom item classes
    public static class WardenAmuletItem extends Item {
        public WardenAmuletItem(Properties props) { super(props); }
        @Override
        public net.minecraft.world.InteractionResultHolder<ItemStack> use(net.minecraft.world.level.Level level, net.minecraft.world.entity.player.Player player, net.minecraft.world.InteractionHand hand) {
            if (!level.isClientSide) {
                player.addEffect(new net.minecraft.world.effect.MobEffectInstance(net.minecraft.world.effect.MobEffects.GLOWING, 200, 0));
                player.addEffect(new net.minecraft.world.effect.MobEffectInstance(net.minecraft.world.effect.MobEffects.MOVEMENT_SPEED, 200, 1));
                player.getCooldowns().addCooldown(this, 1200);
                player.displayClientMessage(net.minecraft.network.chat.Component.literal("§bتعویذ فعال شد! ۱۰ ثانیه در امانی..."), true);
            }
            return net.minecraft.world.InteractionResultHolder.sidedSuccess(player.getItemInHand(hand), level.isClientSide);
        }
    }

    public static class SpiritLanternItem extends Item {
        public SpiritLanternItem(Properties props) { super(props); }
        @Override
        public void inventoryTick(ItemStack stack, net.minecraft.world.level.Level level, net.minecraft.world.entity.Entity entity, int slot, boolean selected) {
            if (selected && !level.isClientSide && level.getGameTime() % 20 == 0) {
                // Reveal hidden barriers with particles
            }
        }
    }

    public static class HallowedCandleItem extends BlockItem {
        public HallowedCandleItem(Properties props) {
            super(net.minecraft.world.level.block.Blocks.CANDLE, props);
        }
    }

    public static class WhisperingSkullItem extends Item {
        public WhisperingSkullItem(Properties props) { super(props); }
        @Override
        public net.minecraft.world.InteractionResultHolder<ItemStack> use(net.minecraft.world.level.Level level, net.minecraft.world.entity.player.Player player, net.minecraft.world.InteractionHand hand) {
            if (!level.isClientSide) {
                String[] whispers = {
                    "§7...کلید سرداب زیر کتابخانه است...",
                    "§7...به آینه اعتماد نکن...",
                    "§7...الارا هنوز زنده است...",
                    "§7...او دروغ می‌گوید! فرار کن!",
                    "§7...قلب را نابود کن... قبل از اینکه تو را ببلعد..."
                };
                int idx = level.random.nextInt(whispers.length);
                player.displayClientMessage(net.minecraft.network.chat.Component.literal(whispers[idx]), false);
                level.playSound(null, player.blockPosition(), net.minecraft.sounds.SoundEvents.WHISPER_1, net.minecraft.sounds.SoundSource.PLAYERS, 1.0f, 0.8f);
                player.getCooldowns().addCooldown(this, 400);
            }
            return net.minecraft.world.InteractionResultHolder.sidedSuccess(player.getItemInHand(hand), level.isClientSide);
        }
    }

    public static class BrokenCompassItem extends Item {
        public BrokenCompassItem(Properties props) { super(props); }
        @Override
        public void inventoryTick(ItemStack stack, net.minecraft.world.level.Level level, net.minecraft.world.entity.Entity entity, int slot, boolean selected) {
            if (!level.isClientSide && entity instanceof net.minecraft.world.entity.player.Player player && level.getGameTime() % 40 == 0) {
                // Point to mansion 0,0
                net.minecraft.core.BlockPos mansion = new net.minecraft.core.BlockPos(0, 70, 0);
                double dx = mansion.getX() - player.getX();
                double dz = mansion.getZ() - player.getZ();
                double dist = Math.sqrt(dx*dx + dz*dz);
                if (selected) {
                    player.displayClientMessage(net.minecraft.network.chat.Component.literal("§7فاصله تا عمارت: " + (int)dist + " بلاک"), true);
                }
            }
        }
    }

    public static class ElixirItem extends Item {
        public ElixirItem(Properties props) { super(props); }
        @Override
        public ItemStack finishUsingItem(ItemStack stack, net.minecraft.world.level.Level level, net.minecraft.world.entity.LivingEntity entity) {
            if (!level.isClientSide && entity instanceof net.minecraft.world.entity.player.Player player) {
                player.removeAllEffects();
                player.addEffect(new net.minecraft.world.effect.MobEffectInstance(net.minecraft.world.effect.MobEffects.CONFUSION, 200, 0));
                player.displayClientMessage(net.minecraft.network.chat.Component.literal("§dفراموش کردی... اما آرام شدی."), true);
            }
            return super.finishUsingItem(stack, level, entity);
        }
    }

    public static class BlackMirrorShardItem extends Item {
        public BlackMirrorShardItem(Properties props) { super(props); }
        @Override
        public net.minecraft.world.InteractionResultHolder<ItemStack> use(net.minecraft.world.level.Level level, net.minecraft.world.entity.player.Player player, net.minecraft.world.InteractionHand hand) {
            if (!level.isClientSide) {
                player.addEffect(new net.minecraft.world.effect.MobEffectInstance(net.minecraft.world.effect.MobEffects.INVISIBILITY, 100, 0));
                player.addEffect(new net.minecraft.world.effect.MobEffectInstance(net.minecraft.world.effect.MobEffects.NIGHT_VISION, 100, 0));
                player.getCooldowns().addCooldown(this, 600);
                player.displayClientMessage(net.minecraft.network.chat.Component.literal("§8در آینه چیزی دیدی..."), true);
            }
            return net.minecraft.world.InteractionResultHolder.sidedSuccess(player.getItemInHand(hand), level.isClientSide);
        }
    }

    public static class CrownThornsItem extends ArmorItem {
        public CrownThornsItem(ArmorMaterial mat, Type type, Properties props) { super(mat, type, props); }
        @Override
        public void inventoryTick(ItemStack stack, net.minecraft.world.level.Level level, net.minecraft.world.entity.Entity entity, int slot, boolean selected) {
            if (!level.isClientSide && entity instanceof net.minecraft.world.entity.player.Player player && level.getGameTime() % 20 == 0) {
                if (player.getInventory().getArmor(3) == stack) {
                    player.hurt(level.damageSources().magic(), 0.5f);
                    if (level.random.nextInt(100) == 0) {
                        player.displayClientMessage(net.minecraft.network.chat.Component.literal("§4§lتاج خار تو را می‌بلعد!"), true);
                        // Summon boss
                        level.playSound(null, player.blockPosition(), net.minecraft.sounds.SoundEvents.WARDEN_ROAR, net.minecraft.sounds.SoundSource.HOSTILE, 1.0f, 0.5f);
                    }
                }
            }
        }
    }
}
