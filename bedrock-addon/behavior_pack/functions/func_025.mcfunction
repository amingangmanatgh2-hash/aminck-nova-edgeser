# Horror Bedrock func 25 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=14..41}] slowness 4 0 true
particle minecraft:sculk_soul ~ ~1 ~ 0.8 0.6 0.4 0.02 5
titleraw @a[scores={novahorror.fear=82..}] title {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
effect @a[scores={novahorror.fear=85..}] nausea 2 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.roar @a ~ ~ ~ 0.9 0.51
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.55
effect @a[scores={novahorror.fear=55..72}] blindness 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.68
particle minecraft:white_ash ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cکمک..."}]}
playsound ambient.cave @a ~ ~ ~ 0.5 0.74
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 6
execute as @a[scores={novahorror.fear=60..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=41..}] slowness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.65
tag @a[scores={novahorror.fear=76..}] add novahorror_enhanced_25
execute as @a[tag=novahorror_enhanced_25] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cکمک..."}]}
# End 25 enhanced 22 diverse
