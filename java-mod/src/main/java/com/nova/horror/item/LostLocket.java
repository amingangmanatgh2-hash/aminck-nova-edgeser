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

/** LostLocket - Lore item, near mansion gives particle trail to basement - Real unique logic */
public class LostLocket extends Item {
    private static final Random RANDOM = new Random();
    public LostLocket() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            BlockPos mansion = new BlockPos(0, 70, 0);
            BlockPos basement = new BlockPos(5, 45, 5);
            double distMansion = player.blockPosition().distSqr(mansion);
            if (distMansion < 10000) {
                // Show trail to basement
                Vec3 start = player.position();
                Vec3 end = new Vec3(basement.getX()+0.5, basement.getY(), basement.getZ()+0.5);
                Vec3 dir = end.subtract(start).normalize();
                for (int i=0;i<20;i++) {
                    double t = i*1.5;
                    double x = start.x + dir.x*t;
                    double y = start.y + dir.y*t + Math.sin(t*0.3)*0.5;
                    double z = start.z + dir.z*t;
                    level.addParticle(net.minecraft.core.particles.ParticleTypes.SOUL_FIRE_FLAME, x, y, z, 0, 0.01, 0);
                }
                player.displayClientMessage(Component.literal("§dگردنبند گمشده راه زیرزمین رو نشون میده..."), true);
                level.playSound(null, player.blockPosition(), SoundEvents.AMETHYST_BLOCK_CHIME, SoundSource.AMBIENT, 0.8F, 1.1F);
            } else {
                player.displayClientMessage(Component.literal("§7گردنبند سرده... باید نزدیک عمارت باشی"), true);
            }
            player.getCooldowns().addCooldown(this, 200);
        }

        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
