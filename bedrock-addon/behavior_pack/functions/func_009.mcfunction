# Horror func 9 - diverse real commands, coordinated with mod
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @a run summon minecraft:bat ~3 ~13 ~-5 {CustomName:"§8Crow 9-1 by Moon",NoGravity:1b}
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.ghast.scream @a ~ ~ ~ 1 0.91
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute at @a run summon minecraft:bat ~3 ~9 ~-9 {CustomName:"§8Crow 9-5 by Moon",NoGravity:1b}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.43
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute at @a run summon minecraft:bat ~5 ~10 ~3 {CustomName:"§8Crow 9-14 by Moon",NoGravity:1b}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound mob.ghast.scream @a ~ ~ ~ 1 0.39
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.12
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
# End func 9 - fear logic
