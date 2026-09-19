# Horror Bedrock func 58 - rain - truly diverse
effect @a[scores={novahorror.fear=13..34}] weakness 3 0 true
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.8 0.2 0.09 7
titleraw @a[scores={novahorror.fear=71..}] title {"rawtext":[{"text":"§8...واقعی نیست..."}]}
effect @a[scores={novahorror.fear=87..}] nausea 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.roar @a ~ ~ ~ 1.0 0.43
playsound ambient.cave @a ~ ~ ~ 0.7 0.96
effect @a[scores={novahorror.fear=53..80}] darkness 2 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.76
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4فرار کن!"}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.58
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 12
tag @a[scores={novahorror.fear=69..}] add novahorror_rain
execute as @a[tag=novahorror_rain] at @s run particle minecraft:soul_fire_flame ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=73..}] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=24..}] weakness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.60
tag @a[scores={novahorror.fear=82..}] add novahorror_enhanced_58
execute as @a[tag=novahorror_enhanced_58] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7...نمی‌تونی فرار کنی..."}]}
# End 58 enhanced 22 diverse
