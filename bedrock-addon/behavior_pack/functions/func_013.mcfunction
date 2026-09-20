# Horror Bedrock func 13 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=17..39}] darkness 4 0 true
particle minecraft:soul ~ ~1 ~ 0.6 0.5 0.6 0.05 8
titleraw @a[scores={novahorror.fear=76..}] title {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
effect @a[scores={novahorror.fear=88..}] weakness 2 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.9 0.75
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.9 0.35
effect @a[scores={novahorror.fear=55..75}] wither 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.93
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4او می‌بینه..."}]}
playsound block.bell.hit @a ~ ~ ~ 0.5 0.68
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.1 11
execute as @a[scores={novahorror.fear=68..}] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=21..}] slowness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.53
tag @a[scores={novahorror.fear=89..}] add novahorror_enhanced_13
execute as @a[tag=novahorror_enhanced_13] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7...نمی‌تونی فرار کنی..."}]}
# End 13 enhanced 22 diverse
