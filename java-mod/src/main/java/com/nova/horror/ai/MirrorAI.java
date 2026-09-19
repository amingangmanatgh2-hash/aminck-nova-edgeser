package com.nova.horror.ai;

import net.minecraft.world.entity.ai.goal.Goal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.LightLayer;
import net.minecraft.world.phys.Vec3;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;

/** MirrorAI - Mirrors player position - Real unique AI */
public class MirrorAI extends Goal {
    
    private final Monster mob;
    private int cooldown=0;
    public MirrorAI(Monster mob) { this.mob=mob; }
    @Override public boolean canUse() { return mob.getTarget() instanceof Player && cooldown==0; }
    @Override public void tick() { if (mob.getTarget() instanceof Player p) { double mx = p.getX() + (p.getX()-mob.getX()); double mz = p.getZ() + (p.getZ()-mob.getZ()); mob.getNavigation().moveTo(mx, p.getY(), mz, 1.2); if (cooldown>0) cooldown--; } }

    @Override public boolean canContinueToUse() { return true; }
    @Override public boolean isInterruptable() { return true; }
}
