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

/** CrowFlyAI - Summon crows flying by moon - Real */
public class CrowFlyAI extends Goal {
    private final Monster mob; private Player target; private int cooldown=0;
    public CrowFlyAI(Monster mob) { this.mob=mob; setFlags(EnumSet.of(Flag.MOVE, Flag.LOOK)); }
    @Override public boolean canUse() { if (mob.getTarget() instanceof Player p) { target=p; return mob.distanceTo(p)<30 && cooldown==0; } return false; }
    @Override public void tick() {
        mob.level().addParticle(net.minecraft.core.particles.ParticleTypes.ASH, mob.getX(), mob.getY()+10, mob.getZ(), 0, 0, 0);
        mob.level().playSound(null, mob.blockPosition(), SoundEvents.PARROT_IMITATE_GHAST, SoundSource.AMBIENT, 0.6F, 0.8F);
        if (cooldown>0) cooldown--;
    }
    @Override public boolean canContinueToUse() { return target!=null && target.isAlive() && mob.distanceTo(target)<35 && cooldown==0; }
}
