package com.nova.horror.ai;

import net.minecraft.world.entity.ai.goal.Goal;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.core.BlockPos;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundSource;
import java.util.EnumSet;

/** ChaseAI - Chase with prediction - Real */
public class ChaseAI extends Goal {
    private final Monster mob; private Player target; private int cooldown=0;
    public ChaseAI(Monster mob) { this.mob=mob; setFlags(EnumSet.of(Flag.MOVE, Flag.LOOK)); }
    @Override public boolean canUse() { if (mob.getTarget() instanceof Player p) { target=p; return mob.distanceTo(p)<30 && cooldown==0; } return false; }
    @Override public void tick() {
        double predX = target.getX() + target.getDeltaMovement().x*10;
        double predZ = target.getZ() + target.getDeltaMovement().z*10;
        mob.getNavigation().moveTo(predX, target.getY(), predZ, 1.3);
        if (cooldown>0) cooldown--;
    }
    @Override public boolean canContinueToUse() { return target!=null && target.isAlive() && mob.distanceTo(target)<35 && cooldown==0; }
}
