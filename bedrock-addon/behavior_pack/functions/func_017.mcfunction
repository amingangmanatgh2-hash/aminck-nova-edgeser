# Horror Bedrock func 17 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=12..44}] weakness 4 0 true
particle minecraft:soul_fire_flame ~ ~1 ~ 0.8 0.4 0.8 0.05 6
titleraw @a[scores={novahorror.fear=79..}] title {"rawtext":[{"text":"§8در بسته است..."}]}
effect @a[scores={novahorror.fear=81..}] nausea 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 0.6 0.49
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.51
effect @a[scores={novahorror.fear=59..66}] blindness 4 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.71
particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
playsound ambient.cave @a ~ ~ ~ 0.8 0.73
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 9
execute as @a[scores={novahorror.fear=65..}] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=38..}] slowness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.53
tag @a[scores={novahorror.fear=84..}] add novahorror_enhanced_17
execute as @a[tag=novahorror_enhanced_17] at @s run titleraw @s actionbar {"rawtext":[{"text":"§8...الارا منتظره..."}]}
# End 17 enhanced 22 diverse
