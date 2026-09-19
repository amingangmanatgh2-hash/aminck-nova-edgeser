# Horror 117 - time_night - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=40..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:nausea 4 0 true
effect give @a[scores={novahorror.fear=69..}] minecraft:weakness 8 2 true
particle minecraft:soul ~ ~2 ~ 0.4 0.8 0.4 0.02 12
particle minecraft:smoke ~ ~10 ~ 4 1 5 0.01 16
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1.2 0.37
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.9 0.76
tellraw @a[scores={novahorror.fear=90..}] {"text":"§4خون...","color":"red"}
title @a[distance=..10] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-15 ~23 ~-5 {CustomName:'"§8Crow 117-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~11 ~20 ~10 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 117-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.skeleton.ambient hostile @a ~ ~ ~ 0.7 1.00
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 13
tag @a[scores={novahorror.fear=81..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
# End horror 117 time_night
