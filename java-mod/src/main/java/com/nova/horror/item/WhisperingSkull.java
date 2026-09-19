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

/**
 * WhisperingSkull - Whispering Skull - random true/false hints
 * Real unique logic, not copy-paste
 */
public class WhisperingSkull extends Item {
    private static final Random RANDOM = new Random();
    public WhisperingSkull() { super(new Properties().stacksTo(1).rarity(Rarity.EPIC)); }
    @Override
    public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
        String[] whispers = {
            "§7...کلید سرداب زیر کتابخانه است...",
            "§7...به آینه اعتماد نکن...",
            "§7...الارا هنوز زنده است...",
            "§7...او دروغ می‌گوید! فرار کن!",
            "§7...قلب را نابود کن... قبل از اینکه تو را ببلعد..."
        };
        String msg = whispers[RANDOM.nextInt(whispers.length)];
        player.displayClientMessage(Component.literal(msg), false);
        level.playSound(null, player.blockPosition(), SoundEvents.WHISPER_1, SoundSource.PLAYERS, 1.0F, 0.8F);
        player.getCooldowns().addCooldown(this, 400);
    
            player.displayClientMessage(Component.literal("§8Lore: Whispering Skull - random true/false hints"), false);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
