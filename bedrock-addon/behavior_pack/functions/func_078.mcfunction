# Horror func 78 - diverse real commands, coordinated with mod
effect @a[distance=..8] weakness 5 0 true
effect @a[distance=..8] weakness 5 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute at @a run summon minecraft:bat ~-7 ~5 ~1 {CustomName:"§8Crow 78-3 by Moon",NoGravity:1b}
scoreboard players add @a novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.ghast.scream @a ~ ~ ~ 1 0.89
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.36
effect @a[distance=..8] weakness 5 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute at @a run summon minecraft:bat ~-5 ~11 ~-2 {CustomName:"§8Crow 78-15 by Moon",NoGravity:1b}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @a run summon minecraft:bat ~-1 ~11 ~-1 {CustomName:"§8Crow 78-17 by Moon",NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
# End func 78 - fear logic
