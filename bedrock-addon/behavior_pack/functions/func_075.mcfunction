# Horror Bedrock func 75 - mansion - truly diverse
effect @a[scores={novahorror.fear=18..38}] weakness 2 0 true
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.4 0.7 0.6 0.05 7
titleraw @a[scores={novahorror.fear=77..}] title {"rawtext":[{"text":"§c...برگرد..."}]}
effect @a[scores={novahorror.fear=81..}] nausea 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 0.6 0.43
playsound mob.warden.roar @a ~ ~ ~ 1.0 0.62
effect @a[scores={novahorror.fear=54..66}] blindness 2 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.86
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7مه غلیظ..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.6 0.80
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 6
tag @a[scores={novahorror.fear=74..}] add novahorror_mansion
execute as @a[tag=novahorror_mansion] at @s run particle minecraft:spore_blossom_air ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=85..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=31..}] weakness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.65
tag @a[scores={novahorror.fear=71..}] add novahorror_enhanced_75
execute as @a[tag=novahorror_enhanced_75] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cکمک..."}]}
# End 75 enhanced 22 diverse
