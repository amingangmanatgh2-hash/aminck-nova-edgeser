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

/** BrokenDoll - Points to nearest horror with distance, whispers, shows health, increases fear if held too long - Enriched deep logic */
public class BrokenDoll extends Item {
    private static final Random RANDOM = new Random();
    public BrokenDoll() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        try {
ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            var entities = level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(35));
            if (!entities.isEmpty()) {
                Monster nearest = entities.get(0);
                double minDist = Double.MAX_VALUE;
                for (var m : entities) {
                    double d = m.distanceTo(player);
                    if (d < minDist) { minDist = d; nearest = m; }
                }
                double dx = nearest.getX() - player.getX();
                double dz = nearest.getZ() - player.getZ();
                double angle = Math.toDegrees(Math.atan2(dz, dx));
                float health = nearest.getHealth();
                float maxHealth = nearest.getMaxHealth();
                player.displayClientMessage(Component.literal("§cعروسک به "+nearest.getName().getString()+" §c"+String.format("%.0f", minDist)+" بلاک اونورتر (HP "+String.format("%.0f", health)+"/"+String.format("%.0f", maxHealth)+") زاویه "+String.format("%.0f", angle)+" اشاره می‌کنه..."), true);
                level.playSound(null, player.blockPosition(), SoundEvents.ENTITY_VILLAGER_AMBIENT, SoundSource.HOSTILE, 0.7F, 1.7F);
                level.addParticle(net.minecraft.core.particles.ParticleTypes.WITCH, nearest.getX(), nearest.getY()+1, nearest.getZ(), 0, 0.05, 0);
                nearest.addEffect(new MobEffectInstance(MobEffects.GLOWING, 60, 0));
                // Increase fear if held too long (simulate via random)
                if (player.getRandom().nextFloat() < 0.3) {
                    if (level.getServer()!=null) level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+player.getName().getString()+" novahorror.fear 1");
                    player.displayClientMessage(Component.literal("§7...عروسک سرد شد..."), true);
                }
                // Whisper
                String[] whispers = {"§7...اون نزدیکه...", "§7...نمی‌تونی فرار کنی...", "§7...عروسک می‌بینه..."};
                if (player.getRandom().nextFloat() < 0.4) player.displayClientMessage(Component.literal(whispers[player.getRandom().nextInt(whispers.length)]), false);
            } else {
                player.displayClientMessage(Component.literal("§7عروسک ساکته... چیزی نزدیک نیست"), true);
                level.playSound(null, player.blockPosition(), SoundEvents.ENTITY_VILLAGER_DEATH, SoundSource.HOSTILE, 0.5F, 1.5F);
            }
            player.getCooldowns().addCooldown(this, 100);
            player.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 20, 0));
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
        } catch (Exception e) { return InteractionResultHolder.fail(stack); }
    }
}
