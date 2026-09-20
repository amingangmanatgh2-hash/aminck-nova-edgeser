# Horror Bedrock func 34 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=20..45}] weakness 5 0 true
particle minecraft:spore_blossom_air ~ ~1 ~ 0.4 0.3 0.7 0.06 7
titleraw @a[scores={novahorror.fear=81..}] title {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
effect @a[scores={novahorror.fear=83..}] wither 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.42
playsound mob.warden.roar @a ~ ~ ~ 0.8 0.46
effect @a[scores={novahorror.fear=59..75}] slowness 4 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.88
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound block.bell.hit @a ~ ~ ~ 0.7 0.62
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 9
execute as @a[scores={novahorror.fear=69..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=28..}] weakness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.44
tag @a[scores={novahorror.fear=82..}] add novahorror_enhanced_34
execute as @a[tag=novahorror_enhanced_34] at @s run titleraw @s actionbar {"rawtext":[{"text":"§4فرار کن!"}]}
# End 34 enhanced 22 diverse
