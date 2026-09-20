# Horror Bedrock func 14 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=21..43}] blindness 4 0 true
particle minecraft:ash ~ ~1 ~ 0.4 0.3 0.3 0.07 8
titleraw @a[scores={novahorror.fear=85..}] title {"rawtext":[{"text":"§c...برگرد..."}]}
effect @a[scores={novahorror.fear=84..}] darkness 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound ambient.cave @a ~ ~ ~ 0.9 0.58
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.52
effect @a[scores={novahorror.fear=60..69}] weakness 3 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.93
particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4خون..."}]}
playsound block.bell.hit @a ~ ~ ~ 0.7 0.42
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 13
execute as @a[scores={novahorror.fear=62..}] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=26..}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.79
tag @a[scores={novahorror.fear=79..}] add novahorror_enhanced_14
execute as @a[tag=novahorror_enhanced_14] at @s run titleraw @s actionbar {"rawtext":[{"text":"§c...برگرد..."}]}
# End 14 enhanced 22 diverse
