# Horror 072 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=49..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:wither 3 1 true
effect give @a[scores={novahorror.fear=70..}] minecraft:blindness 3 1 true
particle minecraft:smoke ~ ~3 ~ 1.0 0.1 0.2 0.06 13
particle minecraft:spore_blossom_air ~ ~10 ~ 4 1 2 0.01 22
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 1.44
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.9 0.69
tellraw @a[scores={novahorror.fear=72..}] {"text":"§c...برگرد...","color":"red"}
title @a[distance=..10] subtitle {"text":"§4فرار کن!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~4 ~19 ~-9 {CustomName:'"§8Crow 72-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-9 ~23 ~7 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 72-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.86
execute if predicate novahorror:is_raining run particle minecraft:soul ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=80..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 1 0.6
# End horror 072
