# Horror Bedrock func 63 - mansion - truly diverse
effect @a[scores={novahorror.fear=25..50}] slowness 5 0 true
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.7 0.3 0.6 0.09 3
titleraw @a[scores={novahorror.fear=74..}] title {"rawtext":[{"text":"§4فرار کن!"}]}
effect @a[scores={novahorror.fear=90..}] darkness 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound ambient.cave @a ~ ~ ~ 1.0 0.54
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.9 0.56
effect @a[scores={novahorror.fear=52..67}] nausea 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 1.00
particle minecraft:basic_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8سایه..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.62
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 12
tag @a[scores={novahorror.fear=68..}] add novahorror_mansion
execute as @a[tag=novahorror_mansion] at @s run particle minecraft:sculk_soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=64..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=40..}] weakness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.46
tag @a[scores={novahorror.fear=79..}] add novahorror_enhanced_63
execute as @a[tag=novahorror_enhanced_63] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
# End 63 enhanced 22 diverse
