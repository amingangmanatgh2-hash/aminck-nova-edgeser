# Horror Bedrock func 31 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=14..35}] weakness 4 0 true
particle minecraft:ash ~ ~1 ~ 0.7 0.5 0.7 0.01 3
titleraw @a[scores={novahorror.fear=71..}] title {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
effect @a[scores={novahorror.fear=83..}] darkness 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.51
playsound ambient.cave @a ~ ~ ~ 0.8 0.65
effect @a[scores={novahorror.fear=59..86}] nausea 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.70
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8سایه..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.68
particle minecraft:soul ~ ~ ~ 1 1 1 0.1 7
execute as @a[scores={novahorror.fear=72..}] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=23..}] weakness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.42
tag @a[scores={novahorror.fear=86..}] add novahorror_enhanced_31
execute as @a[tag=novahorror_enhanced_31] at @s run titleraw @s actionbar {"rawtext":[{"text":"§8...الارا منتظره..."}]}
# End 31 enhanced 22 diverse
