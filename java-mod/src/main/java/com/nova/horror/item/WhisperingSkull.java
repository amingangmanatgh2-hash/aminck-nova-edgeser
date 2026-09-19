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
import java.util.Random;

/** WhisperingSkull - Random true/false hints, whisper sound - Real unique */
public class WhisperingSkull extends Item {
    private static final Random RANDOM = new Random();
    public WhisperingSkull() { super(new Properties().stacksTo(1).rarity(Rarity.EPIC)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
        String[] trueHints = {"§aکلید سرداب زیر کتابخانه است", "§aالارا در Y=15 است", "§aفانوس ارواح مسیر را نشان می‌دهد"};
        String[] falseHints = {"§cبه آینه اعتماد کن", "§cفرار کن از تونل", "§cقلب را بخور"};
        boolean isTrue = RANDOM.nextBoolean();
        String msg = isTrue ? trueHints[RANDOM.nextInt(trueHints.length)] : falseHints[RANDOM.nextInt(falseHints.length)];
        player.displayClientMessage(Component.literal((isTrue ? "§a[حقیقت] " : "§c[دروغ] ") + msg), false);
        level.playSound(null, player.blockPosition(), SoundEvents.WHISPER_1, SoundSource.PLAYERS, 1.0F, 0.7F);
        player.getCooldowns().addCooldown(this, 400);
    
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
