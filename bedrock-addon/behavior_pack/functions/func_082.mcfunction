# Horror func 82 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
scoreboard players add @a novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.73
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute at @a run summon minecraft:bat ~-9 ~6 ~5 {CustomName:"§8Crow 82-10 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute at @a run summon minecraft:bat ~-4 ~14 ~-9 {CustomName:"§8Crow 82-12 by Moon",NoGravity:1b}
effect @a[distance=..8] weakness 5 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.52
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.24
scoreboard players add @a novahorror.fear 1
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.ghast.scream @a ~ ~ ~ 1 1.42
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
# End func 82 - fear logic
