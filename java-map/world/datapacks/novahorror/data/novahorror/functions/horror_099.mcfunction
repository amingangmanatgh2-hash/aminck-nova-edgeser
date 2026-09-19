# Horror 099 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=20..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:nausea 2 0 true
effect give @a[scores={novahorror.fear=58..}] minecraft:weakness 5 0 true
particle minecraft:white_ash ~ ~5 ~ 0.4 0.3 0.5 0.09 11
particle minecraft:witch ~ ~10 ~ 2 1 4 0.01 22
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.73
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 1.0 0.47
tellraw @a[scores={novahorror.fear=73..}] {"text":"§4§lاو اینجاست!","color":"red"}
title @a[distance=..6] subtitle {"text":"§4فرار کن!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~9 ~24 ~14 {CustomName:'"§8Crow 99-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-12 ~20 ~0 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 99-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.72
execute if predicate novahorror:is_raining run particle minecraft:soul ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=85..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 1 0.6
# End horror 099
