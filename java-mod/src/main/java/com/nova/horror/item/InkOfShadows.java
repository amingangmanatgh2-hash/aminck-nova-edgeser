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

/** InkOfShadows - Throws ink blinding all entities including player temporarily then night vision - Real unique logic */
public class InkOfShadows extends Item {
    private static final Random RANDOM = new Random();
    public InkOfShadows() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
            for (var e : level.getEntitiesOfClass(net.minecraft.world.entity.LivingEntity.class, player.getBoundingBox().inflate(10))) {
                if (e != player) {
                    e.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 100, 0));
                    e.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 80, 0));
                }
                level.addParticle(net.minecraft.core.particles.ParticleTypes.SQUID_INK, e.getX(), e.getY()+1, e.getZ(), 0, 0.05, 0);
            }
            player.addEffect(new MobEffectInstance(MobEffects.BLINDNESS, 40, 0));
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 200, 0));
            level.playSound(null, player.blockPosition(), SoundEvents.INK_SAC_USE, SoundSource.PLAYERS, 1.0F, 0.7F);
            player.displayClientMessage(Component.literal("§8جوهر سایه همه رو کور کرد!"), true);
            if (!player.isCreative()) stack.shrink(1);

        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
