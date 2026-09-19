# Horror func 42 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.ghast.scream @a ~ ~ ~ 1 0.45
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.ghast.scream @a ~ ~ ~ 1 0.60
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.33
effect @a[distance=..8] weakness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
# End func 42 - fear logic
