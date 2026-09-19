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

/** BoneWhistle - Calls crows to attack nearest horror entity - Real unique logic */
public class BoneWhistle extends Item {
    private static final Random RANDOM = new Random();
    public BoneWhistle() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            var target = level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(15)).stream().min((a,b)->Double.compare(a.distanceTo(player), b.distanceTo(player))).orElse(null);
            if (target!=null) {
                for (int i=0;i<5;i++) {
                    var bat = new net.minecraft.world.entity.ambient.Bat(net.minecraft.world.entity.EntityType.BAT, level);
                    bat.moveTo(target.getX()+level.random.nextDouble()*4-2, target.getY()+5, target.getZ()+level.random.nextDouble()*4-2);
                    bat.setCustomName(Component.literal("§8Attack Crow"));
                    bat.setNoGravity(true);
                    level.addFreshEntity(bat);
                    target.hurt(level.damageSources().mobAttack(player), 2.0F);
                    level.addParticle(net.minecraft.core.particles.ParticleTypes.CRIT, target.getX(), target.getY()+1, target.getZ(), 0, 0.1, 0);
                }
                level.playSound(null, player.blockPosition(), SoundEvents.PARROT_IMITATE_GHAST, SoundSource.AMBIENT, 1.0F, 0.6F);
                player.displayClientMessage(Component.literal("§8کلاغ‌ها به "+target.getName().getString()+" حمله کردن!"), true);
            } else {
                player.displayClientMessage(Component.literal("§7چیزی برای حمله نیست"), true);
            }
            player.getCooldowns().addCooldown(this, 200);
            if (!player.isCreative() && level.random.nextFloat()<0.1) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
