# Horror Bedrock func 42 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=17..36}] wither 5 0 true
particle minecraft:soul ~ ~1 ~ 0.4 0.8 0.6 0.05 7
titleraw @a[scores={novahorror.fear=71..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=80..}] slowness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 1.0 0.59
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.9 0.80
effect @a[scores={novahorror.fear=62..68}] weakness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.83
particle minecraft:white_ash ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8در بسته است..."}]}
playsound ambient.cave @a ~ ~ ~ 0.6 0.70
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 7
execute as @a[scores={novahorror.fear=84..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=26..}] slowness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.62
tag @a[scores={novahorror.fear=85..}] add novahorror_enhanced_42
execute as @a[tag=novahorror_enhanced_42] at @s run titleraw @s actionbar {"rawtext":[{"text":"§5...زمان برگشت..."}]}
# End 42 enhanced 22 diverse
