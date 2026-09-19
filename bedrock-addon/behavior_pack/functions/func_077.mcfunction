# Horror func 77 - diverse real commands, coordinated with mod
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.10
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.ghast.scream @a ~ ~ ~ 1 1.29
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
scoreboard players add @a novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
# End func 77 - fear logic
