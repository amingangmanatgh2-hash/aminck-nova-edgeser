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

/** BloodPactScroll - Pact with horror: 5 hearts damage for 30 sec strength 2 and fear immunity - Real unique logic */
public class BloodPactScroll extends Item {
    private static final Random RANDOM = new Random();
    public BloodPactScroll() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            player.hurt(level.damageSources().magic(), 10.0F);
            player.addEffect(new MobEffectInstance(MobEffects.DAMAGE_BOOST, 600, 1));
            player.addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 600, 0));
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 600, 0));
            if (level.getServer()!=null) {
                level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players set "+player.getName().getString()+" novahorror.fear 0");
                level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players set "+player.getName().getString()+" novahorror.sanity 100");
            }
            level.playSound(null, player.blockPosition(), SoundEvents.ENTITY_WITHER_SPAWN, SoundSource.HOSTILE, 0.7F, 0.5F);
            player.displayClientMessage(Component.literal("§4پیمان خون بسته شد! 5 قلب دادی ولی 30 ثانیه قوی و بی‌ترس شدی!"), true);
            player.getCooldowns().addCooldown(this, 800);
            if (!player.isCreative()) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
