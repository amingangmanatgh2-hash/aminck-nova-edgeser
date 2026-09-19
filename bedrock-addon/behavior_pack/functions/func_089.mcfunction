# Horror func 89 - diverse real commands, coordinated with mod
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.48
scoreboard players add @a novahorror.fear 1
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 1
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 1 1.18
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[distance=..8] weakness 5 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute at @a run summon minecraft:bat ~2 ~7 ~0 {CustomName:"§8Crow 89-19 by Moon",NoGravity:1b}
# End func 89 - fear logic
