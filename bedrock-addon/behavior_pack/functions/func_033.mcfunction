# Horror func 33 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
scoreboard players add @a novahorror.fear 1
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.51
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.39
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
# End func 33 - fear logic
