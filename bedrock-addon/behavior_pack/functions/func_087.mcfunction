# Horror func 87 - diverse real commands, coordinated with mod
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.07
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.09
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.48
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.31
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 1 0.86
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
# End func 87 - fear logic
