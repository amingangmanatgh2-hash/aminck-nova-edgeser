# Horror func 71 - diverse real commands, coordinated with mod
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.97
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound mob.ghast.scream @a ~ ~ ~ 1 0.68
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.95
# End func 71 - fear logic
