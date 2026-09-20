# Horror Bedrock func 74 - low_health - truly diverse
effect @a[scores={novahorror.fear=12..31}] slowness 3 0 true
particle minecraft:sculk_soul ~ ~1 ~ 0.4 0.8 0.2 0.03 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§7...نمی‌تونی فرار کنی..."}]}
effect @a[scores={novahorror.fear=79..}] weakness 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 0.6 0.58
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.69
effect @a[scores={novahorror.fear=60..81}] nausea 4 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.62
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.5 0.49
particle minecraft:witch ~ ~ ~ 1 1 1 0.1 14
tag @a[scores={novahorror.fear=63..}] add novahorror_low_health
execute as @a[tag=novahorror_low_health] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=60..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=25..}] weakness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.65
tag @a[scores={novahorror.fear=85..}] add novahorror_enhanced_74
execute as @a[tag=novahorror_enhanced_74] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7صدای پا..."}]}
# End 74 enhanced 22 diverse
