# Horror func 19 - diverse real commands, coordinated with mod
scoreboard players add @a[distance=..5] novahorror.dark 1
scoreboard players add @a novahorror.fear 1
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.73
execute at @a run summon minecraft:bat ~0 ~9 ~1 {CustomName:"§8Crow 19-7 by Moon",NoGravity:1b}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~-7 ~10 ~-3 {CustomName:"§8Crow 19-11 by Moon",NoGravity:1b}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
# End func 19 - fear logic
