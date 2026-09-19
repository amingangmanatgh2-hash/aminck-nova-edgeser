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

/** SoulCompass - Points to mansion and nearest crow and nearest horror, spins when fear high, particle trail - Enriched deep logic */
public class SoulCompass extends Item {
    private static final Random RANDOM = new Random();
    public SoulCompass() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            BlockPos mansion = new BlockPos(0, 70, 0);
            double dx = mansion.getX() - player.getX();
            double dz = mansion.getZ() - player.getZ();
            double dist = Math.sqrt(dx*dx+dz*dz);
            double ang = Math.toDegrees(Math.atan2(dz, dx));
            int fear = 0;
            if (level.getServer()!=null) {
                var obj = level.getServer().getScoreboard().getObjective("novahorror.fear");
                if (obj!=null) fear = level.getServer().getScoreboard().getOrCreatePlayerScore(player.getName().getString(), obj).getScore();
            }
            // Find nearest crow (bat)
            var crows = level.getEntitiesOfClass(net.minecraft.world.entity.ambient.Bat.class, player.getBoundingBox().inflate(30));
            String crowInfo = "";
            if (!crows.isEmpty()) {
                var nearestCrow = crows.get(0);
                double minD = Double.MAX_VALUE;
                for (var b : crows) {
                    double d = b.distanceTo(player);
                    if (d < minD) { minD = d; nearestCrow = b; }
                }
                crowInfo = " | کلاغ "+String.format("%.0f", minD)+" بلاک";
                // Trail to crow
                Vec3 s = player.position();
                Vec3 e = nearestCrow.position();
                Vec3 dir = e.subtract(s).normalize();
                for (int i=0;i<8;i++) level.addParticle(net.minecraft.core.particles.ParticleTypes.ASH, s.x+dir.x*i, s.y+dir.y*i, s.z+dir.z*i, 0, 0.01, 0);
            }
            // Find nearest horror
            var horrors = level.getEntitiesOfClass(Monster.class, player.getBoundingBox().inflate(25));
            String horrorInfo = "";
            if (!horrors.isEmpty()) {
                var nearestH = horrors.get(0);
                double minD = Double.MAX_VALUE;
                for (var h : horrors) {
                    double d = h.distanceTo(player);
                    if (d < minD) { minD = d; nearestH = h; }
                }
                horrorInfo = " | هیولا "+String.format("%.0f", minD)+" بلاک";
            }
            if (fear > 70) {
                player.displayClientMessage(Component.literal("§cقطب‌نما دیوانه‌وار می‌چرخه! ترست خیلی بالاست!"+crowInfo+horrorInfo), true);
                level.playSound(null, player.blockPosition(), SoundEvents.BLOCK_BELL_USE, SoundSource.PLAYERS, 1.0F, 0.3F);
                player.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 60, 0));
                for (int i=0;i<10;i++) level.addParticle(net.minecraft.core.particles.ParticleTypes.SMOKE, player.getX()+level.random.nextDouble()-0.5, player.getY()+1, player.getZ()+level.random.nextDouble()-0.5, 0, 0.05, 0);
            } else {
                player.displayClientMessage(Component.literal("§aعمارت "+String.format("%.0f", dist)+" بلاک زاویه "+String.format("%.0f", ang)+crowInfo+horrorInfo), true);
                level.playSound(null, player.blockPosition(), SoundEvents.BLOCK_BELL_USE, SoundSource.PLAYERS, 0.8F, 1.0F);
                // Trail to mansion
                Vec3 start = player.position();
                Vec3 end = new Vec3(mansion.getX()+0.5, mansion.getY(), mansion.getZ()+0.5);
                Vec3 dir = end.subtract(start).normalize();
                for (int i=0;i<10;i++) level.addParticle(net.minecraft.core.particles.ParticleTypes.ENCHANT, start.x+dir.x*i*1.5, start.y+dir.y*i*1.5, start.z+dir.z*i*1.5, 0, 0.02, 0);
            }
            player.getCooldowns().addCooldown(this, 60);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
