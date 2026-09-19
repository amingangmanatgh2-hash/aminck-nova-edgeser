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

/** HolyWater - Damages horror entities, cleanses fear - Real unique logic */
public class HolyWater extends Item {
    private static final Random RANDOM = new Random();
    public HolyWater() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            for (var m : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(6))) {
                m.hurt(level.damageSources().magic(), 8.0F);
                m.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 1));
                m.setSecondsOnFire(3);
                level.addParticle(net.minecraft.core.particles.ParticleTypes.SOUL_FIRE_FLAME, m.getX(), m.getY()+1, m.getZ(), 0, 0.1, 0);
            }
            if (level.getServer()!=null) level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players remove "+player.getName().getString()+" novahorror.fear 10");
            player.addEffect(new MobEffectInstance(MobEffects.REGENERATION, 100, 0));
            level.playSound(null, player.blockPosition(), SoundEvents.BOTTLE_FILL, SoundSource.PLAYERS, 1.0F, 1.2F);
            player.displayClientMessage(Component.literal("§bآب مقدس ترس رو شست!"), true);
            if (!player.isCreative()) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
