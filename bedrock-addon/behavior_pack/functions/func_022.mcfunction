# Horror Bedrock func 22 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=12..31}] wither 3 0 true
particle minecraft:white_ash ~ ~1 ~ 0.3 0.6 0.6 0.05 6
titleraw @a[scores={novahorror.fear=83..}] title {"rawtext":[{"text":"§4خون..."}]}
effect @a[scores={novahorror.fear=90..}] slowness 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.8 0.41
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.8 0.54
effect @a[scores={novahorror.fear=53..75}] darkness 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.84
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§c...برگرد..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.6 0.79
particle minecraft:soul ~ ~ ~ 1 1 1 0.1 5
execute as @a[scores={novahorror.fear=84..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=41..}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.52
tag @a[scores={novahorror.fear=79..}] add novahorror_enhanced_22
execute as @a[tag=novahorror_enhanced_22] at @s run titleraw @s actionbar {"rawtext":[{"text":"§4خون..."}]}
# End 22 enhanced 22 diverse
