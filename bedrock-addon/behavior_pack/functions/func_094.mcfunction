# Horror func 94 - diverse real commands, coordinated with mod
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.10
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[distance=..8] weakness 5 0 true
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
# End func 94 - fear logic
