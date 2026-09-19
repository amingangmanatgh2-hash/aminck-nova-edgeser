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

/** WhisperingRadio - Plays creepy sounds attracting and distracting entities - Real unique logic */
public class WhisperingRadio extends Item {
    private static final Random RANDOM = new Random();
    public WhisperingRadio() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            BlockPos radioPos = player.blockPosition().offset(level.random.nextInt(10)-5, 0, level.random.nextInt(10)-5);
            level.playSound(null, radioPos, SoundEvents.WARDEN_AMBIENT, SoundSource.HOSTILE, 1.2F, 0.5F);
            level.playSound(null, radioPos, SoundEvents.AMBIENT_CAVE, SoundSource.AMBIENT, 1.0F, 0.7F);
            level.addParticle(net.minecraft.core.particles.ParticleTypes.NOTE, radioPos.getX()+0.5, radioPos.getY()+1, radioPos.getZ()+0.5, 0.5, 0.5, 0.5);
            for (var m : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(20))) {
                m.getNavigation().moveTo(radioPos.getX(), radioPos.getY(), radioPos.getZ(), 1.0);
            }
            player.displayClientMessage(Component.literal("§8رادیو نجواها پخش شد - موجودات به اون سمت رفتن!"), true);
            player.getCooldowns().addCooldown(this, 300);
            if (!player.isCreative() && level.random.nextFloat()<0.2) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
