# Horror 055 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=48..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:nausea 5 1 true
effect give @a[scores={novahorror.fear=46..}] minecraft:mining_fatigue 8 0 true
particle minecraft:campfire_cosy_smoke ~ ~5 ~ 0.7 0.9 0.1 0.07 5
particle minecraft:spore_blossom_air ~ ~10 ~ 2 1 2 0.01 23
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.7 0.76
playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 0.9 0.57
tellraw @a[scores={novahorror.fear=52..}] {"text":"§cنمی‌تونم نفس بکشم...","color":"red"}
title @a[distance=..12] subtitle {"text":"§4خون...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-2 ~17 ~-18 {CustomName:'"§8Crow 55-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-2 ~22 ~1 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 55-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.87
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=85..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 055
