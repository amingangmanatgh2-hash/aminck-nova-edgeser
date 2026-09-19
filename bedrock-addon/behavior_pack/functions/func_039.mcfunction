# Horror func 39 - diverse real commands, coordinated with mod
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
execute at @a run summon minecraft:bat ~-9 ~14 ~-8 {CustomName:"§8Crow 39-8 by Moon",NoGravity:1b}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.72
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
scoreboard players add @a novahorror.fear 1
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
# End func 39 - fear logic
