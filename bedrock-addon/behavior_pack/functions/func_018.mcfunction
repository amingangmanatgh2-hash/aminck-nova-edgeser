# Horror Bedrock func 18 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=13..44}] wither 2 0 true
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.8 0.7 0.07 7
titleraw @a[scores={novahorror.fear=81..}] title {"rawtext":[{"text":"§8در بسته است..."}]}
effect @a[scores={novahorror.fear=77..}] slowness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.36
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.82
effect @a[scores={novahorror.fear=58..84}] weakness 3 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.98
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4خون..."}]}
playsound block.bell.hit @a ~ ~ ~ 0.7 0.65
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 13
execute as @a[scores={novahorror.fear=81..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=21..}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.77
tag @a[scores={novahorror.fear=84..}] add novahorror_enhanced_18
execute as @a[tag=novahorror_enhanced_18] at @s run titleraw @s actionbar {"rawtext":[{"text":"§8...واقعی نیست..."}]}
# End 18 enhanced 22 diverse
