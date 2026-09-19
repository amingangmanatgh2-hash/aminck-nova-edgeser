# Horror 051 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=43..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:nausea 6 0 true
effect give @a[scores={novahorror.fear=47..}] minecraft:weakness 7 0 true
particle minecraft:soul ~ ~1 ~ 0.2 0.3 0.5 0.04 12
particle minecraft:warped_spore ~ ~10 ~ 5 1 3 0.01 11
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.9 0.92
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.9 0.63
tellraw @a[scores={novahorror.fear=62..}] {"text":"§4فرار کن!","color":"red"}
title @a[distance=..8] subtitle {"text":"§7صدای پا...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~14 ~15 ~-12 {CustomName:'"§8Crow 51-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~12 ~18 ~-3 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 51-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.87
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=82..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
# End horror 051
