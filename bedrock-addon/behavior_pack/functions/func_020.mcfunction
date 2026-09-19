# Horror func 20 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.40
execute at @a run summon minecraft:bat ~-3 ~8 ~2 {CustomName:"§8Crow 20-3 by Moon",NoGravity:1b}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.31
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute at @a run summon minecraft:bat ~0 ~13 ~7 {CustomName:"§8Crow 20-8 by Moon",NoGravity:1b}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.54
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
scoreboard players add @a[distance=..5] novahorror.dark 1
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
# End func 20 - fear logic
