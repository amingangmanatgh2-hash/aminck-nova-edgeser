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

/** VoidShard - Creates void zone that damages all including player but high fear cleanse - Real unique logic */
public class VoidShard extends Item {
    private static final Random RANDOM = new Random();
    public VoidShard() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            BlockPos center = player.blockPosition();
            for (var e : level.getEntitiesOfClass(net.minecraft.world.entity.LivingEntity.class, player.getBoundingBox().inflate(8))) {
                e.hurt(level.damageSources().magic(), 4.0F);
                e.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0));
                e.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 80, 0));
                level.addParticle(net.minecraft.core.particles.ParticleTypes.SOUL, e.getX(), e.getY()+1, e.getZ(), 0, 0.05, 0);
            }
            for (int i=0;i<20;i++) level.addParticle(net.minecraft.core.particles.ParticleTypes.PORTAL, center.getX()+level.random.nextDouble()*6-3, center.getY()+level.random.nextDouble()*2, center.getZ()+level.random.nextDouble()*6-3, 0, 0.1, 0);
            if (level.getServer()!=null) level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players set "+player.getName().getString()+" novahorror.fear 0");
            player.addEffect(new MobEffectInstance(MobEffects.REGENERATION, 100, 0));
            level.playSound(null, center, SoundEvents.PORTAL_AMBIENT, SoundSource.HOSTILE, 1.0F, 0.3F);
            player.displayClientMessage(Component.literal("§5شکاف خلاء همه ترس رو پاک کرد! ولی به همه آسیب زد!"), true);
            if (!player.isCreative()) stack.shrink(1);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
