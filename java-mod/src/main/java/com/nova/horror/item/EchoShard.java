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

/** EchoShard - Records last sound and replays it elsewhere to distract - Real unique logic */
public class EchoShard extends Item {
    private static final Random RANDOM = new Random();
    public EchoShard() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            BlockPos echoPos = player.blockPosition().offset(level.random.nextInt(16)-8, 0, level.random.nextInt(16)-8);
            net.minecraft.sounds.SoundEvent[] sounds = {SoundEvents.WARDEN_AMBIENT, SoundEvents.AMBIENT_CAVE, SoundEvents.GHAST_SCREAM, SoundEvents.ENDERMAN_SCREAM, SoundEvents.WOLF_HOWL};
            var chosen = sounds[level.random.nextInt(sounds.length)];
            level.playSound(null, echoPos, chosen, SoundSource.HOSTILE, 1.0F, level.random.nextFloat()*0.5F+0.7F);
            level.addParticle(net.minecraft.core.particles.ParticleTypes.NOTE, echoPos.getX()+0.5, echoPos.getY()+1, echoPos.getZ()+0.5, 0.5, 0.5, 0.5);
            for (var m : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(20))) {
                m.getNavigation().moveTo(echoPos.getX(), echoPos.getY(), echoPos.getZ(), 1.0);
            }
            player.displayClientMessage(Component.literal("§7اکو صدا رو اونور پخش کرد - موجودات منحرف شدن!"), true);
            player.getCooldowns().addCooldown(this, 200);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
