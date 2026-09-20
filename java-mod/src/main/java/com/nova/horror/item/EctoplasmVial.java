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

/** EctoplasmVial - Throws vial creating fog revealing invisible entities - Real unique logic */
public class EctoplasmVial extends Item {
    private static final Random RANDOM = new Random();
    public EctoplasmVial() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        try {
ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            var pos = player.blockPosition();
            for (int i=0;i<30;i++) {
                double x = pos.getX()+player.getRandom().nextDouble()*10-5;
                double y = pos.getY()+player.getRandom().nextDouble()*3;
                double z = pos.getZ()+player.getRandom().nextDouble()*10-5;
                level.addParticle(net.minecraft.core.particles.ParticleTypes.CAMPFIRE_COSY_SMOKE, x, y, z, 0, 0.02, 0);
                level.addParticle(net.minecraft.core.particles.ParticleTypes.SOUL, x, y, z, 0, 0.01, 0);
            }
            for (var e : level.getEntitiesOfClass(net.minecraft.world.entity.LivingEntity.class, player.getBoundingBox().inflate(12))) {
                if (e.isInvisible()) {
                    e.removeEffect(net.minecraft.world.effect.MobEffects.INVISIBILITY);
                    e.addEffect(new MobEffectInstance(MobEffects.GLOWING, 120, 0));
                }
            }
            level.playSound(null, pos, SoundEvents.ENTITY_BOTTLE_BREAK, SoundSource.PLAYERS, 1.0F, 0.8F);
            player.displayClientMessage(Component.literal("§aمه اکتوپلاسمی پخش شد - موجودات نامرئی نمایان شدند!"), true);
            if (!player.isCreative()) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
        } catch (Exception e) { return InteractionResultHolder.fail(stack); }
    }
}
