# Horror Bedrock func 19 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=21..36}] blindness 5 0 true
particle minecraft:spore_blossom_air ~ ~1 ~ 0.5 0.3 0.4 0.06 7
titleraw @a[scores={novahorror.fear=81..}] title {"rawtext":[{"text":"§8سایه..."}]}
effect @a[scores={novahorror.fear=76..}] wither 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.36
playsound mob.warden.roar @a ~ ~ ~ 0.9 0.62
effect @a[scores={novahorror.fear=56..86}] nausea 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.99
particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4فرار کن!"}]}
playsound block.bell.hit @a ~ ~ ~ 0.6 0.45
particle minecraft:soul ~ ~ ~ 1 1 1 0.1 14
execute as @a[scores={novahorror.fear=75..}] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=32..}] weakness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.42
tag @a[scores={novahorror.fear=89..}] add novahorror_enhanced_19
execute as @a[tag=novahorror_enhanced_19] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
# End 19 enhanced 22 diverse
