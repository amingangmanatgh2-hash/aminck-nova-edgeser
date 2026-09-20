# Horror Bedrock func 38 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=17..30}] weakness 2 0 true
particle minecraft:white_ash ~ ~1 ~ 0.8 0.5 0.6 0.07 7
titleraw @a[scores={novahorror.fear=82..}] title {"rawtext":[{"text":"§4خون..."}]}
effect @a[scores={novahorror.fear=82..}] nausea 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.44
playsound mob.warden.roar @a ~ ~ ~ 1.0 0.81
effect @a[scores={novahorror.fear=53..67}] slowness 4 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.85
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.6 0.44
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 5
execute as @a[scores={novahorror.fear=61..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=34..}] weakness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.66
tag @a[scores={novahorror.fear=86..}] add novahorror_enhanced_38
execute as @a[tag=novahorror_enhanced_38] at @s run titleraw @s actionbar {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
# End 38 enhanced 22 diverse
