# Horror 128 - location_forest - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=49..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:blindness 6 0 true
effect give @a[scores={novahorror.fear=58..}] minecraft:nausea 8 0 true
particle minecraft:witch ~ ~3 ~ 0.9 0.3 0.3 0.08 14
particle minecraft:spore_blossom_air ~ ~10 ~ 3 1 2 0.01 22
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.9 0.62
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 1.0 0.86
tellraw @a[scores={novahorror.fear=77..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..12] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:oak_leaves run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-9 ~19 ~20 {CustomName:'"§8Crow 128-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~19 ~16 ~14 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 128-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.96
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=83..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
# End horror 128 location_forest
