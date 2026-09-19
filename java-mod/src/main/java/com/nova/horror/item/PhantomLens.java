package com.nova.horror.item;

import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Rarity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.world.InteractionResultHolder;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import net.minecraft.core.BlockPos;
import net.minecraft.network.chat.Component;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.phys.Vec3;
import java.util.Random;

/** PhantomLens - See invisible entities for 10 sec, but drains sanity - Real unique logic */
public class PhantomLens extends Item {
    private static final Random RANDOM = new Random();
    public PhantomLens() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            for (var e : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(20))) {
                if (e.isInvisible() || e.hasEffect(MobEffects.INVISIBILITY)) {
                    e.removeEffect(MobEffects.INVISIBILITY);
                    e.addEffect(new MobEffectInstance(MobEffects.GLOWING, 200, 0));
                }
            }
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 200, 0));
            if (level.getServer()!=null) level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players remove "+player.getName().getString()+" novahorror.sanity 5");
            level.playSound(null, player.blockPosition(), SoundEvents.ENTITY_ITEM_FRAME_REMOVE_ITEM, SoundSource.PLAYERS, 1.0F, 0.8F);
            player.displayClientMessage(Component.literal("§5لنز شبح همه نامرئی‌ها رو نشون داد! عقل -5"), true);
            player.getCooldowns().addCooldown(this, 300);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
