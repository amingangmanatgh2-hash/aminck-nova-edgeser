package com.nova.horror.ai;

import net.minecraft.world.entity.ai.goal.Goal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.LightLayer;
import net.minecraft.world.phys.Vec3;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;

/** WeepingAngelAI - Freezes when watched, moves when not - Real unique AI */
public class WeepingAngelAI extends Goal {
    
    private final Monster mob;
    public WeepingAngelAI(Monster mob) { this.mob=mob; }
    @Override public boolean canUse() { return mob.getTarget() instanceof Player; }
    @Override public void tick() { if (mob.getTarget() instanceof Player p) { Vec3 look = p.getLookAngle(); Vec3 toMob = new Vec3(mob.getX()-p.getX(), mob.getEyeY()-p.getEyeY(), mob.getZ()-p.getZ()).normalize(); double dot = look.dot(toMob); boolean watched = dot > 0.35 && mob.distanceTo(p) < 16 && p.hasLineOfSight(mob); if (watched) { mob.getNavigation().stop(); mob.setDeltaMovement(0,mob.getDeltaMovement().y,0); } else { mob.getNavigation().moveTo(p,1.6); } } }

    @Override public boolean canContinueToUse() { return true; }
    @Override public boolean isInterruptable() { return true; }
}
