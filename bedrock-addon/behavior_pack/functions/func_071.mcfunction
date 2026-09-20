# Horror Bedrock func 71 - forest - truly diverse
effect @a[scores={novahorror.fear=15..31}] weakness 5 0 true
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.7 0.08 7
titleraw @a[scores={novahorror.fear=81..}] title {"rawtext":[{"text":"§c...برگرد..."}]}
effect @a[scores={novahorror.fear=88..}] blindness 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 1.0 0.69
playsound mob.warden.roar @a ~ ~ ~ 1.0 0.33
effect @a[scores={novahorror.fear=55..71}] slowness 3 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.73
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8در بسته است..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.6 0.47
particle minecraft:ash ~ ~ ~ 1 1 1 0.1 14
tag @a[scores={novahorror.fear=71..}] add novahorror_forest
execute as @a[tag=novahorror_forest] at @s run particle minecraft:spore_blossom_air ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=83..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=49..}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.61
tag @a[scores={novahorror.fear=75..}] add novahorror_enhanced_71
execute as @a[tag=novahorror_enhanced_71] at @s run titleraw @s actionbar {"rawtext":[{"text":"§4او می‌بینه..."}]}
# End 71 enhanced 22 diverse
