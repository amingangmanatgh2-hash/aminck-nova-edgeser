# Horror func 51 - diverse real commands, coordinated with mod
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
effect @a[distance=..8] weakness 5 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.09
execute at @a run summon minecraft:bat ~-1 ~15 ~10 {CustomName:"§8Crow 51-6 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[distance=..8] weakness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute at @a run summon minecraft:bat ~-2 ~7 ~9 {CustomName:"§8Crow 51-18 by Moon",NoGravity:1b}
effect @a[distance=..8] weakness 5 0 true
# End func 51 - fear logic
