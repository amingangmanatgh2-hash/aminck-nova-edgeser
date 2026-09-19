# Horror 045 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=42..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:wither 5 0 true
effect give @a[scores={novahorror.fear=60..}] minecraft:blindness 4 0 true
particle minecraft:sculk_soul ~ ~5 ~ 0.3 0.1 0.3 0.03 20
particle minecraft:witch ~ ~10 ~ 4 1 5 0.01 20
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.82
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.9 0.89
tellraw @a[scores={novahorror.fear=75..}] {"text":"§7چرا تنها شدم؟","color":"red"}
title @a[distance=..9] subtitle {"text":"§8سایه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~2 ~16 ~10 {CustomName:'"§8Crow 45-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-4 ~23 ~15 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 45-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.7 0.93
execute if predicate novahorror:is_raining run particle minecraft:white_ash ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 1 0.6
# End horror 045
