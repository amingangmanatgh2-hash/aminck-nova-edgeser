# Horror func 83 - diverse real commands, coordinated with mod
playsound mob.ghast.scream @a ~ ~ ~ 1 0.67
scoreboard players add @a[distance=..5] novahorror.dark 1
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.24
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 1 1.27
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.32
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
# End func 83 - fear logic
