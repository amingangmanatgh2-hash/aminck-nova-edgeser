# Horror Bedrock func 54 - night - truly diverse
effect @a[scores={novahorror.fear=12..32}] nausea 5 0 true
particle minecraft:soul ~ ~1 ~ 0.7 0.7 0.6 0.03 6
titleraw @a[scores={novahorror.fear=74..}] title {"rawtext":[{"text":"§7...نمی‌تونی فرار کنی..."}]}
effect @a[scores={novahorror.fear=76..}] weakness 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.79
playsound block.bell.hit @a ~ ~ ~ 1.0 0.78
effect @a[scores={novahorror.fear=63..66}] blindness 2 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.93
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7مه غلیظ..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.8 0.80
particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.1 7
tag @a[scores={novahorror.fear=62..}] add novahorror_night
execute as @a[tag=novahorror_night] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=70..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=23..}] weakness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.80
tag @a[scores={novahorror.fear=73..}] add novahorror_enhanced_54
execute as @a[tag=novahorror_enhanced_54] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7...باد نجوا می‌کند..."}]}
# End 54 enhanced 22 diverse
