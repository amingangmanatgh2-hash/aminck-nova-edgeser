# Horror Bedrock func 43 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=22..50}] slowness 3 0 true
particle minecraft:sculk_soul ~ ~1 ~ 0.6 0.4 0.3 0.01 5
titleraw @a[scores={novahorror.fear=84..}] title {"rawtext":[{"text":"§cکمک..."}]}
effect @a[scores={novahorror.fear=86..}] blindness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 0.7 0.39
playsound ambient.cave @a ~ ~ ~ 0.7 0.69
effect @a[scores={novahorror.fear=63..69}] nausea 2 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.74
particle minecraft:basic_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4او می‌بینه..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.53
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 11
execute as @a[scores={novahorror.fear=61..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=33..}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.52
tag @a[scores={novahorror.fear=90..}] add novahorror_enhanced_43
execute as @a[tag=novahorror_enhanced_43] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
# End 43 enhanced 22 diverse
