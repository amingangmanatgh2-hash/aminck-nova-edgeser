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

/** SoulLanternUpgraded - Upgraded SpiritLantern - reveals hidden BARRIER and LIGHT and invisible - Real unique logic */
public class SoulLanternUpgraded extends Item {
    private static final Random RANDOM = new Random();
    public SoulLanternUpgraded() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            
            int found = 0;
            for (BlockPos p : BlockPos.betweenClosed(player.blockPosition().offset(-10,-5,-10), player.blockPosition().offset(10,5,10))) {
                var state = level.getBlockState(p);
                if (state.is(net.minecraft.world.level.block.Blocks.BARRIER) || state.is(net.minecraft.world.level.block.Blocks.LIGHT) || state.is(net.minecraft.world.level.block.Blocks.STRUCTURE_VOID)) {
                    level.addParticle(net.minecraft.core.particles.ParticleTypes.WITCH, p.getX()+0.5, p.getY()+0.5, p.getZ()+0.5, 0, 0.05, 0);
                    found++;
                }
            }
            for (var e : level.getEntitiesOfClass(net.minecraft.world.entity.LivingEntity.class, player.getBoundingBox().inflate(15))) {
                if (e.isInvisible()) {
                    e.addEffect(new MobEffectInstance(MobEffects.GLOWING, 150, 0));
                    found++;
                }
            }
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 300, 0));
            level.playSound(null, player.blockPosition(), SoundEvents.SOUL_ESCAPE, SoundSource.AMBIENT, 0.8F, 0.8F);
            player.displayClientMessage(Component.literal("§dفانوس روح ارتقا یافته "+found+" مخفی رو نشون داد!"), true);
            player.getCooldowns().addCooldown(this, 250);

        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
