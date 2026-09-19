# Horror Bedrock func 79 - rain - truly diverse
effect @a[scores={novahorror.fear=13..34}] darkness 4 0 true
particle minecraft:basic_smoke ~ ~1 ~ 0.8 0.6 0.3 0.03 5
titleraw @a[scores={novahorror.fear=83..}] title {"rawtext":[{"text":"§7صدای پا..."}]}
effect @a[scores={novahorror.fear=90..}] weakness 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.9 0.35
playsound mob.warden.heartbeat @a ~ ~ ~ 1.0 0.61
effect @a[scores={novahorror.fear=60..82}] slowness 2 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.86
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8سایه..."}]}
playsound ambient.cave @a ~ ~ ~ 0.6 0.48
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 8
tag @a[scores={novahorror.fear=64..}] add novahorror_rain
execute as @a[tag=novahorror_rain] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=74..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=32..}] weakness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.67
tag @a[scores={novahorror.fear=90..}] add novahorror_enhanced_79
execute as @a[tag=novahorror_enhanced_79] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7...نمی‌تونی فرار کنی..."}]}
# End 79 enhanced 22 diverse
