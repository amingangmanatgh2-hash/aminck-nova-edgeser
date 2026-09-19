
package com.nova.horror.entity;

import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.*;
import net.minecraft.world.entity.ai.goal.target.NearestAttackableTargetGoal;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import com.nova.horror.util.EntitySpawnLimiter;
import com.nova.horror.performance.EntityCullingSystem;
import com.nova.horror.config.NovaHorrorConfig;
import com.nova.horror.util.SafeScoreboardUtil;
import com.nova.horror.performance.MemoryLeakFixer;
import com.nova.horror.performance.ParticleOptimizer;
import com.nova.horror.performance.SoundThrottler;
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
 * LibrarianGhostEntity - Ghost librarian - throws books, whispers lore, teleports between bookshelves
 * Real unique AI - no duplicate methods
 */
public class LibrarianGhostEntity extends Monster {
    private int cooldown = 0;
    private int phase = 0;
    private Random rand = new Random();
    private BlockPos lastPos = null;

    public LibrarianGhostEntity(EntityType<? extends Monster> type, Level level) { super(type, level); }

    public static AttributeSupplier.Builder createAttributes() {
        return Monster.createMonsterAttributes()
            .add(Attributes.MAX_HEALTH, 28.0).add(Attributes.MOVEMENT_SPEED, 0.34).add(Attributes.ATTACK_DAMAGE, 5.0).add(Attributes.FOLLOW_RANGE, 30.0);
    }

    @Override
    protected void registerGoals() {
        
        goalSelector.addGoal(0, new FloatGoal(this));
        goalSelector.addGoal(1, new MeleeAttackGoal(this, 1.1, false));
        goalSelector.addGoal(2, new WaterAvoidingRandomStrollGoal(this, 0.7));
        targetSelector.addGoal(1, new NearestAttackableTargetGoal<>(this, Player.class, true));

    }

    @Override
    public void tick() {
        super.tick();
        try {
            if (level().isClientSide) return;
            if (EntityCullingSystem.shouldSkipTick(this)) return;
            if (this.isDeadOrDying()) return;
            if (cooldown > 0) cooldown--;
                    phase++;
                    
                    // Check for bookshelves nearby
                    BlockPos pos = blockPosition();
                    boolean nearBookshelf = false;
                    for (BlockPos p : BlockPos.betweenClosed(pos.offset(-5,-2,-5), pos.offset(5,2,5))) {
                        if (level().getBlockState(p).getBlock().toString().contains("bookshelf")) { nearBookshelf = true; break; }
                    }
                    if (nearBookshelf) {
                        addEffect(new MobEffectInstance(MobEffects.INVISIBILITY, 40, 0, false, false));
                        if (phase % 60 == 0) {
                            level().addParticle(net.minecraft.core.particles.ParticleTypes.ENCHANT, getX(), getY()+1.5, getZ(), rand.nextDouble()-0.5, 0.2, rand.nextDouble()-0.5);
                        }
                        if (getTarget() instanceof Player p && rand.nextInt(80)==0 && cooldown==0) {
                            // Throw book
                            var book = new net.minecraft.world.entity.item.ItemEntity(level(), getX(), getY()+1, getZ(), new net.minecraft.world.item.ItemStack(net.minecraft.world.item.Items.BOOK));
                            book.setDeltaMovement((p.getX()-getX())*0.1, 0.3, (p.getZ()-getZ())*0.1);
                            EntitySpawnLimiter.safeAddEntity(level(),(book);
                            p.addEffect(new MobEffectInstance(MobEffects.CONFUSION, 60, 0));
                            level().playSound(null, blockPosition(), SoundEvents.BLOCK_ENCHANTMENT_TABLE_USE, SoundSource.HOSTILE, 0.8F, 0.5F);
                            cooldown = 100;
                        }
                    }
                    if (getTarget() instanceof Player p && phase % 150 == 0) {
                        String[] lore = {"§7...کتاب ممنوعه...","§7...الارا اینجا بود...","§7...صفحه 47 رو نخون..."};
                        p.displayClientMessage(Component.literal(lore[rand.nextInt(lore.length)]), false);
                    }
        } catch (Exception e) {}
    }

    
    public void teleportToBookshelf() {
        for (BlockPos p : BlockPos.betweenClosed(blockPosition().offset(-10,-3,-10), blockPosition().offset(10,3,10))) {
            if (level().getBlockState(p).getBlock().toString().contains("bookshelf")) {
                teleportTo(p.getX()+0.5, p.getY()+1, p.getZ()+0.5);
                break;
            }
        }
    }
    public void throwBookAt(Player player) {
        var book = new net.minecraft.world.entity.item.ItemEntity(level(), getX(), getY()+1, getZ(), new net.minecraft.world.item.ItemStack(net.minecraft.world.item.Items.BOOK));
        book.setDeltaMovement((player.getX()-getX())*0.15, 0.4, (player.getZ()-getZ())*0.15);
        EntitySpawnLimiter.safeAddEntity(level(),(book);
    }


    @Override protected SoundEvent getAmbientSound() { return SoundEvents.ENTITY_WARDEN_AMBIENT; }
    @Override protected SoundEvent getHurtSound(net.minecraft.world.damagesource.DamageSource src) { return SoundEvents.ENTITY_WARDEN_HURT; }
    @Override protected SoundEvent getDeathSound() { return SoundEvents.ENTITY_WARDEN_DEATH; }
}
