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

/** AmbushAI - Ambush in dark - Real */
public class AmbushAI extends Goal {
    private final Monster mob; private Player target; private int cooldown=0;
    public AmbushAI(Monster mob) { this.mob=mob; setFlags(EnumSet.of(Flag.MOVE, Flag.LOOK)); }
    @Override public boolean canUse() { if (mob.getTarget() instanceof Player p) { target=p; return mob.distanceTo(p)<30 && cooldown==0; } return false; }
    @Override public void tick() {
        if (mob.level().getBrightness(net.minecraft.world.level.LightLayer.BLOCK, mob.blockPosition())<3) {
            mob.addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 60, 0, false, false));
            if (mob.distanceTo(target)<4) { mob.doHurtTarget(target); target.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 60, 0)); cooldown=200; }
        }
        if (cooldown>0) cooldown--;
    }
    @Override public boolean canContinueToUse() { return target!=null && target.isAlive() && mob.distanceTo(target)<35 && cooldown==0; }
}
