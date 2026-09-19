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

/** HerbBundle - Cleanses negative effects, gives resistance, calms crows - Real unique logic */
public class HerbBundle extends Item {
    private static final Random RANDOM = new Random();
    public HerbBundle() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            player.removeEffect(MobEffects.DARKNESS);
            player.removeEffect(MobEffects.BLINDNESS);
            player.removeEffect(MobEffects.WEAKNESS);
            player.removeEffect(MobEffects.MOVEMENT_SLOWDOWN);
            player.removeEffect(MobEffects.WITHER);
            player.removeEffect(MobEffects.NAUSEA);
            player.addEffect(new MobEffectInstance(MobEffects.REGENERATION, 120, 0));
            player.addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 200, 0));
            for (var bat : level.getEntitiesOfClass(net.minecraft.world.entity.ambient.Bat.class, player.getBoundingBox().inflate(15))) {
                bat.discard();
            }
            if (level.getServer()!=null) level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players remove "+player.getName().getString()+" novahorror.fear 8");
            level.playSound(null, player.blockPosition(), SoundEvents.BLOCK_GRASS_BREAK, SoundSource.PLAYERS, 0.8F, 1.2F);
            player.displayClientMessage(Component.literal("§aگیاهان مقدس اثر منفی رو پاک کردن! ترس -8"), true);
            if (!player.isCreative()) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
