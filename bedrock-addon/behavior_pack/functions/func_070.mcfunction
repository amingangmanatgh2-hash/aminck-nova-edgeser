# Horror Bedrock func 70 - forest - truly diverse
effect @a[scores={novahorror.fear=13..45}] slowness 4 0 true
particle minecraft:soul ~ ~1 ~ 0.5 0.7 0.6 0.02 6
titleraw @a[scores={novahorror.fear=82..}] title {"rawtext":[{"text":"§8...واقعی نیست..."}]}
effect @a[scores={novahorror.fear=89..}] wither 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.roar @a ~ ~ ~ 0.8 0.79
playsound mob.warden.heartbeat @a ~ ~ ~ 0.6 0.72
effect @a[scores={novahorror.fear=58..73}] nausea 2 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.62
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cکمک..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.6 0.50
particle minecraft:basic_smoke ~ ~ ~ 1 1 1 0.1 14
tag @a[scores={novahorror.fear=74..}] add novahorror_forest
execute as @a[tag=novahorror_forest] at @s run particle minecraft:witch ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=61..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=21..}] weakness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.72
tag @a[scores={novahorror.fear=73..}] add novahorror_enhanced_70
execute as @a[tag=novahorror_enhanced_70] at @s run titleraw @s actionbar {"rawtext":[{"text":"§5...زمان برگشت..."}]}
# End 70 enhanced 22 diverse
