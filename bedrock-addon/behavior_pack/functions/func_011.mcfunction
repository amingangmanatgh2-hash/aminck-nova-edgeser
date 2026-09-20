# Horror Bedrock func 11 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=21..38}] blindness 4 0 true
particle minecraft:white_ash ~ ~1 ~ 0.4 0.6 0.7 0.09 3
titleraw @a[scores={novahorror.fear=76..}] title {"rawtext":[{"text":"§cقلبم تند میزنه..."}]}
effect @a[scores={novahorror.fear=77..}] wither 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.roar @a ~ ~ ~ 0.8 0.68
playsound block.bell.hit @a ~ ~ ~ 0.8 0.75
effect @a[scores={novahorror.fear=65..80}] darkness 2 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.72
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
playsound ambient.cave @a ~ ~ ~ 0.6 0.63
particle minecraft:witch ~ ~ ~ 1 1 1 0.1 12
execute as @a[scores={novahorror.fear=63..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=28..}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.60
tag @a[scores={novahorror.fear=90..}] add novahorror_enhanced_11
execute as @a[tag=novahorror_enhanced_11] at @s run titleraw @s actionbar {"rawtext":[{"text":"§5...زمان برگشت..."}]}
# End 11 enhanced 22 diverse
