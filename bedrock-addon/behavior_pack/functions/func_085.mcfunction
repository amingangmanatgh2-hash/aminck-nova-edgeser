# Horror func 85 - diverse real commands, coordinated with mod
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[distance=..8] weakness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
scoreboard players add @a novahorror.fear 1
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute at @a run summon minecraft:bat ~10 ~7 ~10 {CustomName:"§8Crow 85-7 by Moon",NoGravity:1b}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.05
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.49
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
# End func 85 - fear logic
