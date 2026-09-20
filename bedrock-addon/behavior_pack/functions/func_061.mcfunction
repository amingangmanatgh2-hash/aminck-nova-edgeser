# Horror Bedrock func 61 - night - truly diverse
effect @a[scores={novahorror.fear=17..34}] slowness 4 0 true
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.7 0.5 0.03 5
titleraw @a[scores={novahorror.fear=77..}] title {"rawtext":[{"text":"§5...زمان برگشت..."}]}
effect @a[scores={novahorror.fear=81..}] wither 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.57
playsound block.bell.hit @a ~ ~ ~ 0.6 0.79
effect @a[scores={novahorror.fear=55..74}] nausea 2 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.75
particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cکمک..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.8 0.56
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 13
tag @a[scores={novahorror.fear=63..}] add novahorror_night
execute as @a[tag=novahorror_night] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=75..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=48..}] weakness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.40
tag @a[scores={novahorror.fear=71..}] add novahorror_enhanced_61
execute as @a[tag=novahorror_enhanced_61] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
# End 61 enhanced 22 diverse
