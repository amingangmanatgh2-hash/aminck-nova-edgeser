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

/** RavenFeather - Slow falling + night vision + crow summon - Real unique logic */
public class RavenFeather extends Item {
    private static final Random RANDOM = new Random();
    public RavenFeather() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            player.addEffect(new MobEffectInstance(MobEffects.SLOW_FALLING, 300, 0));
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 300, 0));
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 300, 0));
            var bat = new net.minecraft.world.entity.ambient.Bat(net.minecraft.world.entity.EntityType.BAT, level);
            bat.moveTo(player.getX(), player.getY()+3, player.getZ());
            bat.setCustomName(Component.literal("§8Raven Guide"));
            bat.setNoGravity(true);
            level.addFreshEntity(bat);
            level.playSound(null, player.blockPosition(), SoundEvents.ENTITY_PARROT_IMITATE_GHAST, SoundSource.AMBIENT, 0.8F, 1.2F);
            player.displayClientMessage(Component.literal("§8پر کلاغ تو رو سبک کرد و راه رو نشون میده..."), true);
            if (!player.isCreative()) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
