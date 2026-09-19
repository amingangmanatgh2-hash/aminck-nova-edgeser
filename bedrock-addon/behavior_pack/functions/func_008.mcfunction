# Horror func 8 - diverse real commands, coordinated with mod
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute at @a run summon minecraft:bat ~7 ~11 ~0 {CustomName:"§8Crow 8-1 by Moon",NoGravity:1b}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.05
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~9 ~6 ~2 {CustomName:"§8Crow 8-8 by Moon",NoGravity:1b}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
scoreboard players add @a[distance=..5] novahorror.dark 1
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.63
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.40
effect @a[distance=..8] weakness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
# End func 8 - fear logic
