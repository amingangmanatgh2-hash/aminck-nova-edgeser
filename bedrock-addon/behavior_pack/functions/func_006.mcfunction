# Horror Bedrock func 6 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=20..43}] nausea 3 0 true
particle minecraft:basic_smoke ~ ~1 ~ 0.4 0.7 0.3 0.01 6
titleraw @a[scores={novahorror.fear=77..}] title {"rawtext":[{"text":"§4فرار کن!"}]}
effect @a[scores={novahorror.fear=81..}] blindness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound ambient.cave @a ~ ~ ~ 0.7 0.70
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.6 0.32
effect @a[scores={novahorror.fear=56..78}] weakness 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.95
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7صدای پا..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.8 0.56
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 13
execute as @a[scores={novahorror.fear=67..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=36..}] slowness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.61
tag @a[scores={novahorror.fear=73..}] add novahorror_enhanced_6
execute as @a[tag=novahorror_enhanced_6] at @s run titleraw @s actionbar {"rawtext":[{"text":"§4خون..."}]}
# End 6 enhanced 22 diverse
