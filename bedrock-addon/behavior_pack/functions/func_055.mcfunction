# Horror func 55 - diverse real commands, coordinated with mod
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[distance=..8] weakness 5 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
scoreboard players add @a novahorror.fear 1
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.67
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
# End func 55 - fear logic
