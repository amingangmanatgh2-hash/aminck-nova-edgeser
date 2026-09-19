# Horror Bedrock func 60 - low_health - truly diverse
effect @a[scores={novahorror.fear=13..38}] wither 5 0 true
particle minecraft:witch ~ ~1 ~ 0.6 0.5 0.2 0.02 5
titleraw @a[scores={novahorror.fear=70..}] title {"rawtext":[{"text":"§5...زمان برگشت..."}]}
effect @a[scores={novahorror.fear=90..}] nausea 2 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.9 0.53
playsound ambient.cave @a ~ ~ ~ 0.6 0.68
effect @a[scores={novahorror.fear=63..66}] slowness 2 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 1.00
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.9 0.42
particle minecraft:soul ~ ~ ~ 1 1 1 0.1 5
tag @a[scores={novahorror.fear=71..}] add novahorror_low_health
execute as @a[tag=novahorror_low_health] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 60 low_health
