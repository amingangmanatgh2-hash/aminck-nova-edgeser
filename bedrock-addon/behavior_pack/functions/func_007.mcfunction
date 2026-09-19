# Horror func 7 - diverse real commands, coordinated with mod
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.25
playsound mob.ghast.scream @a ~ ~ ~ 1 0.79
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
scoreboard players add @a[distance=..5] novahorror.dark 1
scoreboard players add @a novahorror.fear 1
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
# End func 7 - fear logic
