# Horror 093 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=37..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:nausea 5 0 true
effect give @a[scores={novahorror.fear=75..}] minecraft:mining_fatigue 3 2 true
particle minecraft:ash ~ ~2 ~ 0.4 0.5 0.4 0.06 13
particle minecraft:white_ash ~ ~10 ~ 2 1 2 0.01 13
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1.1 0.86
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 0.5 0.71
tellraw @a[scores={novahorror.fear=79..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..6] subtitle {"text":"§8...کسی دنبالم میاد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~2 ~24 ~6 {CustomName:'"§8Crow 93-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-7 ~22 ~-1 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 93-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.64
execute if predicate novahorror:is_raining run particle minecraft:crimson_spore ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=79..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 1 0.6
# End horror 093
