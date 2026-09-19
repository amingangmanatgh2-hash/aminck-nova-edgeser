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

/** CursedTotem - Totem that saves from death but increases fear permanently 10 and spawns horror - Real unique logic */
public class CursedTotem extends Item {
    private static final Random RANDOM = new Random();
    public CursedTotem() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            player.addEffect(new MobEffectInstance(MobEffects.ABSORPTION, 200, 1));
            player.addEffect(new MobEffectInstance(MobEffects.REGENERATION, 100, 1));
            player.addEffect(new MobEffectInstance(MobEffects.FIRE_RESISTANCE, 300, 0));
            if (level.getServer()!=null) level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+player.getName().getString()+" novahorror.fear 10");
            // Spawn horror nearby as cost
            var horror = new net.minecraft.world.entity.monster.Zombie(net.minecraft.world.entity.EntityType.ZOMBIE, level);
            horror.moveTo(player.getX()+level.random.nextDouble()*6-3, player.getY(), player.getZ()+level.random.nextDouble()*6-3);
            horror.setCustomName(Component.literal("§4Totem Price"));
            level.addFreshEntity(horror);
            level.playSound(null, player.blockPosition(), SoundEvents.ITEM_TOTEM_USE, SoundSource.PLAYERS, 1.0F, 0.6F);
            player.displayClientMessage(Component.literal("§6توتم نجاتت داد ولی بهایی داشت... ترس +10 و یه موجود احضار شد!"), true);
            if (!player.isCreative()) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
