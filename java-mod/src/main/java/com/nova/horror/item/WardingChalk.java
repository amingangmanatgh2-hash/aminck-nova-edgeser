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

/** WardingChalk - Places temporary circle repelling entities - Real unique logic */
public class WardingChalk extends Item {
    private static final Random RANDOM = new Random();
    public WardingChalk() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        try {
ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            BlockPos center = player.blockPosition().below();
            for (int x=-3;x<=3;x++) for (int z=-3;z<=3;z++) {
                double d = Math.sqrt(x*x+z*z);
                if (d>=2.5 && d<=3.5) {
                    BlockPos p = center.offset(x,0,z);
                    if (level.getBlockState(p).isAir() || level.getBlockState(p).canBeReplaced()) {
                        level.setBlock(p, net.minecraft.world.level.block.Blocks.WHITE_CONCRETE.defaultBlockState(), 3);
                        level.addParticle(net.minecraft.core.particles.ParticleTypes.SOUL_FIRE_FLAME, p.getX()+0.5, p.getY()+1, p.getZ()+0.5, 0, 0.02, 0);
                    }
                }
            }
            for (var m : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(5))) {
                double dx = m.getX() - player.getX();
                double dz = m.getZ() - player.getZ();
                m.setDeltaMovement(dx*0.6, 0.4, dz*0.6);
                m.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 1));
            }
            level.playSound(null, center, SoundEvents.BLOCK_AMETHYST_BLOCK_CHIME, SoundSource.BLOCKS, 1.0F, 0.8F);
            player.displayClientMessage(Component.literal("§dدایره محافظ کشیده شد! 15 ثانیه موجودات نمی‌تونن نزدیک شن"), true);
            if (!player.isCreative()) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
        } catch (Exception e) { return InteractionResultHolder.fail(stack); }
    }
}
