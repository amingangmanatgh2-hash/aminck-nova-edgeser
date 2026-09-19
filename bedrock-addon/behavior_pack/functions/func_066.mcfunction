# Horror func 66 - diverse real commands, coordinated with mod
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
effect @a[distance=..8] weakness 5 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.81
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.27
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[distance=..8] weakness 5 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.96
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.58
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
# End func 66 - fear logic
