# Horror Bedrock func 23 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=23..39}] weakness 2 0 true
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.4 0.8 0.3 0.08 8
titleraw @a[scores={novahorror.fear=81..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=77..}] nausea 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.59
playsound ambient.cave @a ~ ~ ~ 0.8 0.58
effect @a[scores={novahorror.fear=59..89}] blindness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.73
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.45
particle minecraft:witch ~ ~ ~ 1 1 1 0.1 13
execute as @a[scores={novahorror.fear=68..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=20..}] weakness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.63
tag @a[scores={novahorror.fear=71..}] add novahorror_enhanced_23
execute as @a[tag=novahorror_enhanced_23] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cکمک..."}]}
# End 23 enhanced 22 diverse
