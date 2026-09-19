# Horror func 65 - diverse real commands, coordinated with mod
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.92
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[distance=..8] weakness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
# End func 65 - fear logic
