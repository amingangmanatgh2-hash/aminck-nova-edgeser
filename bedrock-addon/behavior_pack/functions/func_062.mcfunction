# Horror Bedrock func 62 - night - truly diverse
effect @a[scores={novahorror.fear=20..43}] blindness 3 0 true
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.7 0.2 0.5 0.06 5
titleraw @a[scores={novahorror.fear=74..}] title {"rawtext":[{"text":"§5...زمان برگشت..."}]}
effect @a[scores={novahorror.fear=78..}] wither 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.52
playsound mob.wolf.howl @a ~ ~ ~ 0.6 0.49
effect @a[scores={novahorror.fear=61..80}] nausea 4 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.79
particle minecraft:basic_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
playsound mob.warden.roar @a ~ ~ ~ 0.8 0.46
particle minecraft:ash ~ ~ ~ 1 1 1 0.1 12
tag @a[scores={novahorror.fear=70..}] add novahorror_night
execute as @a[tag=novahorror_night] at @s run particle minecraft:soul_fire_flame ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=68..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=50..}] weakness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.73
tag @a[scores={novahorror.fear=87..}] add novahorror_enhanced_62
execute as @a[tag=novahorror_enhanced_62] at @s run titleraw @s actionbar {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
# End 62 enhanced 22 diverse
