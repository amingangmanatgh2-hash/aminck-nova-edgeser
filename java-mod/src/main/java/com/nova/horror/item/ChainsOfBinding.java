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

/** ChainsOfBinding - Stuns horror entity 3 sec with chains - Real unique logic */
public class ChainsOfBinding extends Item {
    private static final Random RANDOM = new Random();
    public ChainsOfBinding() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            var target = level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(8)).stream().min((a,b)->Double.compare(a.distanceTo(player), b.distanceTo(player))).orElse(null);
            if (target!=null) {
                target.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 5));
                target.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 60, 2));
                target.setDeltaMovement(0,0,0);
                target.getNavigation().stop();
                for (int i=0;i<10;i++) level.addParticle(net.minecraft.core.particles.ParticleTypes.CRIT, target.getX(), target.getY()+1, target.getZ(), level.random.nextDouble()-0.5, 0.1, level.random.nextDouble()-0.5);
                level.playSound(null, target.blockPosition(), SoundEvents.BLOCK_CHAIN_BREAK, SoundSource.HOSTILE, 1.0F, 0.5F);
                player.displayClientMessage(Component.literal("§6زنجیرها "+target.getName().getString()+" رو 3 ثانیه بست!"), true);
                if (!player.isCreative()) stack.shrink(1);
            } else {
                player.displayClientMessage(Component.literal("§7چیزی برای بستن نزدیک نیست"), true);
            }
            player.getCooldowns().addCooldown(this, 250);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
