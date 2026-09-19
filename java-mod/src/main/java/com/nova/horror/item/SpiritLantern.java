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

/** SpiritLantern - Scans BARRIER, reveals invisible, clears cobweb, night vision, trail to basement, repels horror - Enriched deep logic */
public class SpiritLantern extends Item {
    private static final Random RANDOM = new Random();
    public SpiritLantern() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            BlockPos pos = player.blockPosition();
            int found = 0;
            int cleared = 0;
            for (BlockPos p : BlockPos.betweenClosed(pos.offset(-12,-5,-12), pos.offset(12,5,12))) {
                var state = level.getBlockState(p);
                if (state.is(net.minecraft.world.level.block.Blocks.BARRIER) || state.is(net.minecraft.world.level.block.Blocks.LIGHT) || state.is(net.minecraft.world.level.block.Blocks.STRUCTURE_VOID)) {
                    level.addParticle(net.minecraft.core.particles.ParticleTypes.WITCH, p.getX()+0.5, p.getY()+0.5, p.getZ()+0.5, 0, 0.05, 0);
                    level.addParticle(net.minecraft.core.particles.ParticleTypes.SOUL_FIRE_FLAME, p.getX()+0.5, p.getY()+0.5, p.getZ()+0.5, 0, 0.02, 0);
                    found++;
                }
                if (state.is(net.minecraft.world.level.block.Blocks.COBWEB)) {
                    level.setBlock(p, net.minecraft.world.level.block.Blocks.AIR.defaultBlockState(), 3);
                    cleared++;
                }
            }
            for (var e : level.getEntitiesOfClass(net.minecraft.world.entity.LivingEntity.class, player.getBoundingBox().inflate(14))) {
                if (e.isInvisible() || e.hasEffect(MobEffects.INVISIBILITY)) {
                    e.addEffect(new MobEffectInstance(MobEffects.GLOWING, 120, 0));
                    found++;
                }
                if (e instanceof Monster) {
                    double dx = e.getX() - player.getX();
                    double dz = e.getZ() - player.getZ();
                    e.setDeltaMovement(dx*0.2, 0.1, dz*0.2);
                }
            }
            // Trail to basement if near mansion
            BlockPos mansion = new BlockPos(0,70,0);
            if (pos.distSqr(mansion) < 10000) {
                BlockPos basement = new BlockPos(5,45,5);
                Vec3 start = player.position();
                Vec3 end = new Vec3(basement.getX()+0.5, basement.getY(), basement.getZ()+0.5);
                Vec3 dir = end.subtract(start).normalize();
                for (int i=0;i<12;i++) {
                    double t = i*1.3;
                    level.addParticle(net.minecraft.core.particles.ParticleTypes.SOUL, start.x+dir.x*t, start.y+dir.y*t, start.z+dir.z*t, 0, 0.01, 0);
                }
            }
            player.addEffect(new MobEffectInstance(MobEffects.NIGHT_VISION, 400, 0));
            player.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 100, 0));
            level.playSound(null, pos, SoundEvents.PARTICLE_SOUL_ESCAPE, SoundSource.AMBIENT, 0.9F, 0.8F);
            player.displayClientMessage(Component.literal("§eفانوس روح "+found+" مخفی و "+cleared+" تار عنکبوت رو نشون داد و پاک کرد!"), true);
            player.getCooldowns().addCooldown(this, 180);
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
    }
}
