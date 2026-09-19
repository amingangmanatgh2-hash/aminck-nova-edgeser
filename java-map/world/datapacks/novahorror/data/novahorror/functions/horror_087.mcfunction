# Horror 087 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=43..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:weakness 5 1 true
effect give @a[scores={novahorror.fear=66..}] minecraft:blindness 3 2 true
particle minecraft:white_ash ~ ~1 ~ 0.8 0.0 0.2 0.06 14
particle minecraft:soul_fire_flame ~ ~10 ~ 4 1 3 0.01 21
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.9 1.09
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.5 0.86
tellraw @a[scores={novahorror.fear=65..}] {"text":"§7چرا تنها شدم؟","color":"red"}
title @a[distance=..6] subtitle {"text":"§7صدای پا...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-19 ~22 ~-17 {CustomName:'"§8Crow 87-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-15 ~17 ~5 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 87-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.77
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 14
tag @a[scores={novahorror.fear=70..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:note ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 0.6 0.87
summon minecraft:parrot ~7 ~7 ~15 {CustomName:'"§8Raven 87-21"',NoGravity:0b,Tags:["raven_87"]}
title @a[scores={novahorror.fear=85..}] actionbar {"text":"§7...باد نجوا می‌کند...","color":"dark_red"}
# End horror 087 enhanced 25 diverse
