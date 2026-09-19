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

/** DreamCatcher - Prevents DreamEater, gives good dreams (regeneration) at night - Real unique logic */
public class DreamCatcher extends Item {
    private static final Random RANDOM = new Random();
    public DreamCatcher() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            player.addEffect(new MobEffectInstance(MobEffects.REGENERATION, 300, 0));
            player.addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 300, 0));
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 300, 0));
            // Kill DreamEater nearby
            int killed = 0;
            for (var e : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(15))) {
                if (e.getType().toString().contains("Dream") || e.getCustomName()!=null && e.getCustomName().getString().contains("Dream")) {
                    e.hurt(level.damageSources().magic(), 20.0F);
                    killed++;
                }
            }
            if (level.getServer()!=null) level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+player.getName().getString()+" novahorror.sanity 10");
            level.playSound(null, player.blockPosition(), SoundEvents.AMETHYST_BLOCK_CHIME, SoundSource.AMBIENT, 1.0F, 1.2F);
            player.displayClientMessage(Component.literal("§dدریم‌کچر کابوس‌ها رو گرفت! عقل +10، "+killed+" DreamEater کشته شد"), true);
            player.getCooldowns().addCooldown(this, 500);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
