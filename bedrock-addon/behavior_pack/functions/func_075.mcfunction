# Horror func 75 - diverse real commands, coordinated with mod
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
scoreboard players add @a novahorror.fear 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.ghast.scream @a ~ ~ ~ 1 1.12
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[distance=..8] weakness 5 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.88
# End func 75 - fear logic
