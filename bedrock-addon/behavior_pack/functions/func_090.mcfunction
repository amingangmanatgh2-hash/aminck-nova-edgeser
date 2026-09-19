# Horror func 90 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[distance=..8] weakness 5 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[distance=..8] weakness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
scoreboard players add @a[distance=..5] novahorror.dark 1
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.41
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.ghast.scream @a ~ ~ ~ 1 0.88
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
# End func 90 - fear logic
