package com.nova.horror.ai;

import net.minecraft.world.entity.ai.goal.Goal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.LightLayer;
import net.minecraft.world.phys.Vec3;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;

/** CeilingHangAI - Hangs from ceiling, drops when player below - Real unique AI */
public class CeilingHangAI extends Goal {
    
    private final Monster mob;
    public CeilingHangAI(Monster mob) { this.mob=mob; }
    @Override public boolean canUse() { BlockPos above = mob.blockPosition().above(2); return !mob.level().getBlockState(above).isAir(); }
    @Override public void tick() { mob.setNoGravity(true); if (mob.getTarget() instanceof Player p && mob.distanceTo(p) < 5) { mob.setNoGravity(false); mob.setDeltaMovement(0,-1.2,0); } }

    @Override public boolean canContinueToUse() { return true; }
    @Override public boolean isInterruptable() { return true; }
}
