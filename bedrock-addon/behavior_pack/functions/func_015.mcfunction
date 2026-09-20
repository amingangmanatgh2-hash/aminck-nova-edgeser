# Horror Bedrock func 15 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=18..43}] blindness 5 0 true
particle minecraft:soul ~ ~1 ~ 0.8 0.3 0.5 0.07 4
titleraw @a[scores={novahorror.fear=74..}] title {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
effect @a[scores={novahorror.fear=77..}] darkness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.69
playsound mob.wolf.howl @a ~ ~ ~ 0.6 0.30
effect @a[scores={novahorror.fear=59..84}] wither 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.80
particle minecraft:basic_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound block.bell.hit @a ~ ~ ~ 0.7 0.54
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.1 13
execute as @a[scores={novahorror.fear=71..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=24..}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.81
tag @a[scores={novahorror.fear=72..}] add novahorror_enhanced_15
execute as @a[tag=novahorror_enhanced_15] at @s run titleraw @s actionbar {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
# End 15 enhanced 22 diverse
