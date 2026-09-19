package com.nova.horror.entity;

import com.nova.horror.NovaHorrorMod;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.MobCategory;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

public class ModEntities {
    public static final DeferredRegister<EntityType<?>> ENTITIES = DeferredRegister.create(ForgeRegistries.ENTITY_TYPES, NovaHorrorMod.MODID);

    // Custom horror entities - using vanilla base types with custom AI via datapack and code
    public static final RegistryObject<EntityType<ShadeEntity>> SHADE = ENTITIES.register("shade",
        () -> EntityType.Builder.of(ShadeEntity::new, MobCategory.MONSTER)
            .sized(0.6f, 1.8f).clientTrackingRange(10).build("shade"));

    public static final RegistryObject<EntityType<CrawlerEntity>> CRAWLER = ENTITIES.register("crawler",
        () -> EntityType.Builder.of(CrawlerEntity::new, MobCategory.MONSTER)
            .sized(0.8f, 0.6f).clientTrackingRange(8).build("crawler"));

    public static final RegistryObject<EntityType<WeeperEntity>> WEEPER = ENTITIES.register("weeper",
        () -> EntityType.Builder.of(WeeperEntity::new, MobCategory.MONSTER)
            .sized(0.6f, 1.9f).clientTrackingRange(10).build("weeper"));

    public static final RegistryObject<EntityType<ForgottenEntity>> FORGOTTEN = ENTITIES.register("forgotten",
        () -> EntityType.Builder.of(ForgottenEntity::new, MobCategory.MONSTER)
            .sized(1.2f, 2.4f).fireImmune().clientTrackingRange(12).build("forgotten"));

    public static void register(IEventBus bus) {
        ENTITIES.register(bus);
    }
}
