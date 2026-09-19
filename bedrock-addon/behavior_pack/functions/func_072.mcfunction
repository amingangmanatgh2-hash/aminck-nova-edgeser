# Horror func 72 - diverse real commands, coordinated with mod
scoreboard players add @a novahorror.fear 1
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
scoreboard players add @a novahorror.fear 1
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.78
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
scoreboard players add @a novahorror.fear 1
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~-7 ~6 ~5 {CustomName:"§8Crow 72-19 by Moon",NoGravity:1b}
# End func 72 - fear logic
