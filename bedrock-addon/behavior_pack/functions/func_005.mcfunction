# Horror Bedrock func 5 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=13..34}] wither 4 0 true
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.3 0.5 0.05 5
titleraw @a[scores={novahorror.fear=76..}] title {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
effect @a[scores={novahorror.fear=85..}] nausea 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.roar @a ~ ~ ~ 0.8 0.43
playsound ambient.cave @a ~ ~ ~ 1.0 0.34
effect @a[scores={novahorror.fear=63..74}] blindness 2 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.73
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4خون..."}]}
playsound block.bell.hit @a ~ ~ ~ 0.6 0.58
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 11
execute as @a[scores={novahorror.fear=65..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=29..}] weakness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.57
tag @a[scores={novahorror.fear=75..}] add novahorror_enhanced_5
execute as @a[tag=novahorror_enhanced_5] at @s run titleraw @s actionbar {"rawtext":[{"text":"§5...زمان برگشت..."}]}
# End 5 enhanced 22 diverse
