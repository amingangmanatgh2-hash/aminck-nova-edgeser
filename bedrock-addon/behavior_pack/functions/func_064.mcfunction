# Horror Bedrock func 64 - night - truly diverse
effect @a[scores={novahorror.fear=14..30}] blindness 2 0 true
particle minecraft:soul ~ ~1 ~ 0.4 0.3 0.5 0.03 6
titleraw @a[scores={novahorror.fear=70..}] title {"rawtext":[{"text":"§8...واقعی نیست..."}]}
effect @a[scores={novahorror.fear=83..}] wither 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.75
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.5 0.61
effect @a[scores={novahorror.fear=56..66}] slowness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.69
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8سایه..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.6 0.49
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 6
tag @a[scores={novahorror.fear=69..}] add novahorror_night
execute as @a[tag=novahorror_night] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=68..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=20..}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.72
tag @a[scores={novahorror.fear=70..}] add novahorror_enhanced_64
execute as @a[tag=novahorror_enhanced_64] at @s run titleraw @s actionbar {"rawtext":[{"text":"§4او می‌بینه..."}]}
# End 64 enhanced 22 diverse
