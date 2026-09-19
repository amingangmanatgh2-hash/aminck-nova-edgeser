# Horror 056 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=53..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:nausea 2 1 true
effect give @a[scores={novahorror.fear=57..}] minecraft:hunger 3 0 true
particle minecraft:ash ~ ~2 ~ 0.8 0.1 0.4 0.03 13
particle minecraft:white_ash ~ ~10 ~ 3 1 3 0.01 18
playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 1.2 0.58
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.7 1.07
tellraw @a[scores={novahorror.fear=82..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..11] subtitle {"text":"§cکمک...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-6 ~22 ~17 {CustomName:'"§8Crow 56-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~2 ~22 ~-17 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 56-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.79
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=72..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 1 0.6
# End horror 056
