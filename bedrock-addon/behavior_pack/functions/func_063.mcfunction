# Horror func 63 - diverse real commands, coordinated with mod
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.78
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[distance=..8] weakness 5 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.55
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 1 0.65
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute at @a run summon minecraft:bat ~-8 ~14 ~-9 {CustomName:"§8Crow 63-13 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.72
execute at @a run summon minecraft:bat ~-9 ~15 ~8 {CustomName:"§8Crow 63-19 by Moon",NoGravity:1b}
# End func 63 - fear logic
