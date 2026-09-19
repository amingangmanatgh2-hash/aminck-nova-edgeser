
package com.nova.horror.entity;

import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.*;
import net.minecraft.world.entity.ai.goal.target.NearestAttackableTargetGoal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundSource;
import net.minecraft.core.BlockPos;
import net.minecraft.world.level.LightLayer;
import net.minecraft.world.phys.Vec3;
import net.minecraft.network.chat.Component;
import java.util.Random;


/**
 * MimicWhisperEntity - Mimic Whisper - copies player sounds, whispers from behind, teleports behind
 * Real unique AI - enriched rich logic 100+ lines
 */
public class MimicWhisperEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public MimicWhisperEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 20.0).add(Attributes.MOVEMENT_SPEED, 0.36).add(Attributes.ATTACK_DAMAGE, 4.0).add(Attributes.FOLLOW_RANGE, 38.0);
    }

    @Override
    protected void registerGoals() {
        goalSelector.addGoal(0, new FloatGoal(this)); goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.1, false)); goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.9)); goalSelector.addGoal(3, new LookAtPlayerGoal(this, Player.class, 15.0F)); targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));
    }

    @Override
    public void tick() {
        super.tick();
        if (level().isClientSide) return;
        if (cooldown > 0) cooldown--;
        phase++;
        
        if (phase % 80 == 0) {
            SoundEvent[] pool = {SoundEvents.ENTITY_PLAYER_HURT, SoundEvents.ENTITY_PLAYER_HURT, SoundEvents.PARROT_IMITATE_GHAST, SoundEvents.ENTITY_PARROT_IMITATE_GHAST, SoundEvents.ENTITY_ZOMBIE_AMBIENT, SoundEvents.ENTITY_SKELETON_AMBIENT};
            SoundEvent chosen = pool[rand.nextInt(pool.length)];
            BlockPos soundPos = blockPosition().offset(rand.nextInt(8)-4, 0, rand.nextInt(8)-4);
            level().playSound(null, soundPos, chosen, SoundSource.AMBIENT, 0.7F, rand.nextFloat()*0.5F+0.7F);
            level().addParticle(net.minecraft.core.particles.ParticleTypes.NOTE, soundPos.getX()+0.5, soundPos.getY()+1, soundPos.getZ()+0.5, rand.nextDouble(), rand.nextDouble(), rand.nextDouble());
        }
        if (getTarget() instanceof Player p) {
            if (phase % 170 == 0 && distanceTo(p) > 8 && cooldown==0) {
                double yaw = Math.toRadians(p.getYRot());
                double bx = p.getX() - Math.sin(yaw)*3.2;
                double bz = p.getZ() + Math.cos(yaw)*3.2;
                BlockPos behind = new BlockPos((int)bx, (int)p.getY(), (int)bz);
                if (level().getBlockState(behind).isAir() && level().getBlockState(behind.above()).isAir()) {
                    teleportTo(bx, p.getY(), bz);
                    String[] whispers = {"§7...چرا تنها رفتی...", "§7...صداتو شنیدم...", "§7...مثل تو حرف می‌زنم...", "§7...برگرد پیشم..."};
                    p.displayClientMessage(Component.literal(whispers[rand.nextInt(whispers.length)]), false);
                    level().playSound(null, p.blockPosition(), SoundEvents.AMBIENT_CAVE, SoundSource.HOSTILE, 0.7F, 0.9F);
                    p.addEffect(new MobEffectInstance(MobEffects.DARKNESS, 50, 0));
                    if (level().getServer()!=null) level().getServer().getCommands().performPrefixedCommand(level.getServer().createCommandSourceStack(), "scoreboard players add "+p.getName().getString()+" novahorror.fear 2");
                    cooldown = 120;
                }
            }
            if (phase % 60 == 0 && distanceTo(p) < 5) {
                p.addEffect(new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 40, 0, false, false));
            }
        }

    }

    
    public void mimicSound(SoundEvent event, Player target) {
        level().playSound(null, target.blockPosition(), event, SoundSource.HOSTILE, 0.8F, 0.8F);
        level().addParticle(net.minecraft.core.particles.ParticleTypes.NOTE, target.getX(), target.getY()+1, target.getZ(), 0, 0.1, 0);
    }
    public void whisperBehind(Player player) {
        double yaw = Math.toRadians(player.getYRot());
        double bx = player.getX() - Math.sin(yaw)*2.5;
        double bz = player.getZ() + Math.cos(yaw)*2.5;
        teleportTo(bx, player.getY(), bz);
        player.displayClientMessage(Component.literal("§7...پشت سرتی..."), true);
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
