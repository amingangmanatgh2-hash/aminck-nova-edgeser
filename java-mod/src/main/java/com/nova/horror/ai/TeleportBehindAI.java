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

/** TeleportBehindAI - Teleport behind when not looked - Real */
public class TeleportBehindAI extends Goal {
    private final Monster mob; private Player target; private int cooldown=0;
    public TeleportBehindAI(Monster mob) { this.mob=mob; setFlags(EnumSet.of(Flag.MOVE, Flag.LOOK)); }
    @Override public boolean canUse() { if (mob.getTarget() instanceof Player p) { target=p; return mob.distanceTo(p)<30 && cooldown==0; } return false; }
    @Override public void tick() {
        var look = target.getLookAngle(); var toMob = new net.minecraft.world.phys.Vec3(mob.getX()-target.getX(),0,mob.getZ()-target.getZ()).normalize(); double dot=look.dot(toMob);
        if (dot<-0.4 && mob.distanceTo(target)>8) { double yaw=Math.toRadians(target.getYRot()); double bx=target.getX()-Math.sin(yaw)*2.5; double bz=target.getZ()+Math.cos(yaw)*2.5; mob.teleportTo(bx,target.getY(),bz); mob.level().playSound(null, new BlockPos((int)bx,(int)target.getY(),(int)bz), SoundEvents.ENTITY_ENDERMAN_TELEPORT, SoundSource.HOSTILE, 0.8F, 0.4F); cooldown=150; }
        if (cooldown>0) cooldown--;
    }
    @Override public boolean canContinueToUse() { return target!=null && target.isAlive() && mob.distanceTo(target)<35 && cooldown==0; }
}
