# Horror func 2 - diverse real commands, coordinated with mod
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.ghast.scream @a ~ ~ ~ 1 0.79
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
scoreboard players add @a[distance=..5] novahorror.dark 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
scoreboard players add @a[distance=..5] novahorror.dark 1
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.08
scoreboard players add @a novahorror.fear 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
# End func 2 - fear logic
