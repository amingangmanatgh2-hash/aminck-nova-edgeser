# Horror 116 - location_forest - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=38..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:darkness 2 0 true
effect give @a[scores={novahorror.fear=50..}] minecraft:blindness 4 0 true
particle minecraft:soul ~ ~3 ~ 0.2 0.3 1.0 0.04 19
particle minecraft:warped_spore ~ ~10 ~ 5 1 3 0.01 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1.0 1.31
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 0.9 0.62
tellraw @a[scores={novahorror.fear=83..}] {"text":"§4§lاو اینجاست!","color":"red"}
title @a[distance=..8] subtitle {"text":"§7...نمی‌تونی فرار کنی...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~6 ~23 ~-8 {CustomName:'"§8Crow 116-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~9 ~18 ~-15 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 116-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.92
execute if predicate novahorror:is_raining run particle minecraft:soul ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=77..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
# End horror 116 location_forest
