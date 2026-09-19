# Horror func 18 - diverse real commands, coordinated with mod
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
scoreboard players add @a[distance=..5] novahorror.dark 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
# End func 18 - fear logic
