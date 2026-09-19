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

/** RustedMansionKey - Opens multiple doors, checks distance, gives advancement, reduces fear, particle trail - Enriched deep logic */
public class RustedMansionKey extends Item {
    private static final Random RANDOM = new Random();
    public RustedMansionKey() { super(new Properties().stacksTo(1).rarity(Rarity.RARE)); }
    @Override public InteractionResultHolder<ItemStack> use(Level level, Player player, InteractionHand hand) {
        try {
ItemStack stack = player.getItemInHand(hand);
        if (!level.isClientSide) {
            BlockPos[] doors = {new BlockPos(0,70,0), new BlockPos(5,70,5), new BlockPos(-10,70,10), new BlockPos(0,45,5)};
            boolean opened = false;
            for (BlockPos doorPos : doors) {
                if (player.blockPosition().distSqr(doorPos) < 200) {
                    var state = level().getBlockState(doorPos);
                    if (state.getBlock().toString().contains("door") || state.is(net.minecraft.world.level.block.Blocks.IRON_DOOR)) {
                        level.setBlock(doorPos, net.minecraft.world.level.block.Blocks.AIR.defaultBlockState(), 3);
                        level.setBlock(doorPos.above(), net.minecraft.world.level.block.Blocks.AIR.defaultBlockState(), 3);
                        level.playSound(null, doorPos, SoundEvents.IRON_DOOR_OPEN, SoundSource.BLOCKS, 1.2F, 0.7F);
                        level.addParticle(net.minecraft.core.particles.ParticleTypes.CRIT, doorPos.getX()+0.5, doorPos.getY()+1, doorPos.getZ()+0.5, 0, 0.1, 0);
                        player.displayClientMessage(Component.literal("§aدر "+doorPos.getX()+","+doorPos.getY()+","+doorPos.getZ()+" با صدای جیرجیر باز شد..."), true);
                        opened = true;
                        if (level.getServer()!=null) {
                            level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players remove "+player.getName().getString()+" novahorror.fear 5");
                            level.getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "advancement grant "+player.getName().getString()+" only novahorror:open_mansion");
                        }
                        break;
                    }
                }
            }
            if (!opened) {
                // Show trail to nearest door
                BlockPos nearest = doors[0];
                double minDist = Double.MAX_VALUE;
                for (BlockPos d : doors) {
                    double dist = player.blockPosition().distSqr(d);
                    if (dist < minDist) { minDist = dist; nearest = d; }
                }
                Vec3 start = player.position();
                Vec3 end = new Vec3(nearest.getX()+0.5, nearest.getY(), nearest.getZ()+0.5);
                Vec3 dir = end.subtract(start).normalize();
                for (int i=0;i<15;i++) {
                    double t = i*1.2;
                    level.addParticle(net.minecraft.core.particles.ParticleTypes.WITCH, start.x+dir.x*t, start.y+dir.y*t+Math.sin(t*0.4)*0.3, start.z+dir.z*t, 0, 0.01, 0);
                }
                player.displayClientMessage(Component.literal("§7باید نزدیک در باشی... نزدیک‌ترین در "+String.format("%.0f", Math.sqrt(minDist))+" بلاک فاصله داره"), true);
                level.playSound(null, player.blockPosition(), SoundEvents.BLOCK_CHAIN_BREAK, SoundSource.BLOCKS, 0.6F, 0.5F);
            } else {
                if (!player.isCreative()) stack.shrink(1);
                player.getCooldowns().addCooldown(this, 200);
            }
        }
        return InteractionResultHolder.sidedSuccess(stack, level.isClientSide);
        } catch (Exception e) { return InteractionResultHolder.fail(stack); }
    }
}
