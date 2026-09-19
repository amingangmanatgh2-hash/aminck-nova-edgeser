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

/** WardensAmulet - Repels Shade, glowing+speed+night vision+resistance, reduces fear, plays heartbeat, particle ward - Enriched deep logic */
public class WardensAmulet extends Item {
    private static final Random RANDOM = new Random();
    public WardensAmulet() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        try {
ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            var pos = player.blockPosition();
            int repelled = 0;
            for (var e : level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(12))) {
                String name = e.getType().toString();
                if (name.contains("Shade") || name.contains("Warden") || e.getCustomName()!=null && e.getCustomName().getString().contains("Shade")) {
                    double dx = e.getX() - player.getX();
                    double dz = e.getZ() - player.getZ();
                    e.setDeltaMovement(dx*0.5, 0.3, dz*0.5);
                    e.addEffect(new MobEffectInstance(MobEffects.WEAKNESS, 100, 1));
                    e.addEffect(new MobEffectInstance(MobEffects.GLOWING, 100, 0));
                    repelled++;
                }
            }
            player.addEffect(new MobEffectInstance(MobEffects.GLOWING, 200, 0));
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 200, 0));
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 400, 0));
            player.addEffect(new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 200, 0));
            if (level.getServer()!=null) {
                level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players remove "+player.getName().getString()+" novahorror.fear 3");
            }
            for (int i=0;i<15;i++) level.addParticle(net.minecraft.core.particles.ParticleTypes.SCULK_SOUL, pos.getX()+player.getRandom().nextDouble()*4-2, pos.getY()+player.getRandom().nextDouble()*2, pos.getZ()+player.getRandom().nextDouble()*4-2, 0, 0.02, 0);
            level.playSound(null, pos, SoundEvents.ENTITY_WARDEN_HEARTBEAT, SoundSource.PLAYERS, 0.8F, 1.2F);
            level.playSound(null, pos, SoundEvents.BLOCK_AMETHYST_BLOCK_CHIME, SoundSource.BLOCKS, 0.7F, 1.0F);
            player.displayClientMessage(Component.literal("§bطلسم واردن "+repelled+" Shade رو دفع کرد! ترس -3"), true);
            player.getCooldowns().addCooldown(this, 300);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
        } catch (Exception e) { return InteractionResultHolder.fail(stack); }
    }
}
