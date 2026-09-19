# Horror func 0 - diverse real commands, coordinated with mod
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.51
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.67
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute at @a run summon minecraft:bat ~3 ~11 ~9 {CustomName:"§8Crow 0-10 by Moon",NoGravity:1b}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.38
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
# End func 0 - fear logic
