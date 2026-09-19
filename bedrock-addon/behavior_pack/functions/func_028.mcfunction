# Horror func 28 - diverse real commands, coordinated with mod
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[distance=..8] weakness 5 0 true
playsound mob.ghast.scream @a ~ ~ ~ 1 0.69
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
# End func 28 - fear logic
