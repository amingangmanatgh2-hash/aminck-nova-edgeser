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

/** FearAuraAI - Fear aura 10 blocks - Real */
public class FearAuraAI extends Goal {
    private final Monster mob; private Player target; private int cooldown=0;
    public FearAuraAI(Monster mob) { this.mob=mob; setFlags(EnumSet.of(Flag.MOVE, Flag.LOOK)); }
    @Override public boolean canUse() { if (mob.getTarget() instanceof Player p) { target=p; return mob.distanceTo(p)<30 && cooldown==0; } return false; }
    @Override public void tick() {
        for (Player p : mob.level().getEntitiesOfClass(Player.class, mob.getBoundingBox().inflate(10))) { p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 60, 0)); }
        if (cooldown>0) cooldown--;
    }
    @Override public boolean canContinueToUse() { return target!=null && target.isAlive() && mob.distanceTo(target)<35 && cooldown==0; }
}
