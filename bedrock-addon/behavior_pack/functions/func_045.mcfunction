# Horror Bedrock func 45 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=23..47}] darkness 2 0 true
particle minecraft:white_ash ~ ~1 ~ 0.7 0.4 0.7 0.09 7
titleraw @a[scores={novahorror.fear=72..}] title {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
effect @a[scores={novahorror.fear=78..}] slowness 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.61
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.8 0.75
effect @a[scores={novahorror.fear=62..76}] nausea 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.60
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cکمک..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.61
particle minecraft:ash ~ ~ ~ 1 1 1 0.1 14
execute as @a[scores={novahorror.fear=66..}] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=34..}] weakness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.60
tag @a[scores={novahorror.fear=73..}] add novahorror_enhanced_45
execute as @a[tag=novahorror_enhanced_45] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7صدای پا..."}]}
# End 45 enhanced 22 diverse
