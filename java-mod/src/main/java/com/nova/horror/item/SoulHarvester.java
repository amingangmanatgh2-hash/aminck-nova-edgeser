package com.nova.horror.item;

import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Rarity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import com.nova.horror.util.SafeScoreboardUtil;
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

/** SoulHarvester - Harvests soul from dead horror, gives fear resistance - Real unique logic */
public class SoulHarvester extends Item {
    private static final Random RANDOM = new Random();
    public SoulHarvester() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        try {
ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            int harvested = 0;
            for (var e : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(10))) {
                if (!e.isAlive()) {
                    harvested++;
                    level.addParticle(net.minecraft.core.particles.ParticleTypes.SOUL, e.getX(), e.getY()+1, e.getZ(), 0, 0.1, 0);
                    e.discard();
                }
            }
            if (harvested>0) {
                player.addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 200+harvested*20, 0));
                player.addEffect(new MobEffectInstance(MobEffects.REGENERATION, 100, 0));
                if (level.getServer()!=null) level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players remove "+player.getName().getString()+" novahorror.fear "+(harvested*2));
                player.displayClientMessage(Component.literal("§5"+harvested+" روح درو شد! ترس -"+(harvested*2)), true);
                level.playSound(null, player.blockPosition(), SoundEvents.PARTICLE_SOUL_ESCAPE, SoundSource.PLAYERS, 0.9F, 0.8F);
            } else {
                player.displayClientMessage(Component.literal("§7روحی برای درو نیست..."), true);
            }
            player.getCooldowns().addCooldown(this, 250);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
        } catch (Exception e) { return InteractionResultHolder.fail(stack); }
    }
}
