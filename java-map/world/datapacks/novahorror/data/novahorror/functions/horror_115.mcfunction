# Horror 115 - time_rain - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=30..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:weakness 6 1 true
effect give @a[scores={novahorror.fear=62..}] minecraft:wither 7 2 true
particle minecraft:crimson_spore ~ ~1 ~ 0.3 0.3 1.0 0.09 6
particle minecraft:witch ~ ~10 ~ 5 1 3 0.01 30
playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.40
playsound minecraft:entity.soul_sand_valley_mood ambient @a ~ ~ ~ 0.6 1.17
tellraw @a[scores={novahorror.fear=70..}] {"text":"§5...زمان برگشت...","color":"red"}
title @a[distance=..12] subtitle {"text":"§7چرا تنها شدم؟","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~1 ~22 ~-9 {CustomName:'"§8Crow 115-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~8 ~19 ~4 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 115-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.76
execute if predicate novahorror:is_raining run particle minecraft:note ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=71..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 1 0.6
# End horror 115 time_rain
