package com.nova.horror.ai;

import net.minecraft.world.entity.ai.goal.Goal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.LightLayer;
import net.minecraft.world.phys.Vec3;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;

/** FogTeleportAI - Teleports in fog - Real unique AI */
public class FogTeleportAI extends Goal {
    
    private final Monster mob;
    private int cooldown=0;
    public FogTeleportAI(Monster mob) { this.mob=mob; }
    @Override public boolean canUse() { return mob.level().isRaining() || mob.level().getBrightness(net.minecraft.world.level.LightLayer.BLOCK, mob.blockPosition()) < 3; }
    @Override public void tick() { if (cooldown>0) cooldown--; if (mob.getTarget()!=null && mob.getRandom().nextInt(60)==0 && cooldown==0) { double tx = mob.getTarget() != null ? getTarget().getX() : getX()+mob.getRandom().nextDouble()*8-4; double tz = mob.getTarget().getZ()+mob.getRandom().nextDouble()*8-4; mob.teleportTo(tx, mob.getTarget().getY(), tz); cooldown=80; } }

    @Override public boolean canContinueToUse() { return true; }
    @Override public boolean isInterruptable() { return true; }
}
