package com.nova.horror.ai;

import net.minecraft.world.entity.ai.goal.Goal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.LightLayer;
import net.minecraft.world.phys.Vec3;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;

/** HallucinationAI - Disappears when close - Real unique AI */
public class HallucinationAI extends Goal {
    
    private final Monster mob;
    public HallucinationAI(Monster mob) { this.mob=mob; }
    @Override public boolean canUse() { return mob.getTarget() instanceof Player && mob.distanceTo(mob.getTarget()) < 4; }
    @Override public void tick() { if (mob.getTarget() instanceof Player p) { mob.teleportTo(mob.getX()+mob.getRandom().nextDouble()*20-10, mob.getY(), mob.getZ()+mob.getRandom().nextDouble()*20-10); mob.level().playSound(null, mob.blockPosition(), SoundEvents.ENDERMAN_TELEPORT, SoundSource.AMBIENT, 0.5F, 1.6F); } }

    @Override public boolean canContinueToUse() { return true; }
    @Override public boolean isInterruptable() { return true; }
}
