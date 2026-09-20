# Horror Bedrock func 10 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=13..48}] nausea 2 0 true
particle minecraft:white_ash ~ ~1 ~ 0.8 0.5 0.7 0.07 6
titleraw @a[scores={novahorror.fear=76..}] title {"rawtext":[{"text":"§cکمک..."}]}
effect @a[scores={novahorror.fear=77..}] darkness 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 0.6 0.69
playsound ambient.cave @a ~ ~ ~ 0.9 0.72
effect @a[scores={novahorror.fear=53..84}] wither 2 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.81
particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7مه غلیظ..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.54
particle minecraft:soul ~ ~ ~ 1 1 1 0.1 11
execute as @a[scores={novahorror.fear=62..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=36..}] weakness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.82
tag @a[scores={novahorror.fear=78..}] add novahorror_enhanced_10
execute as @a[tag=novahorror_enhanced_10] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
# End 10 enhanced 22 diverse
