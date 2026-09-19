# Horror 000 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=22..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:slowness 3 1 true
effect give @a[scores={novahorror.fear=73..}] minecraft:mining_fatigue 5 2 true
particle minecraft:sculk_soul ~ ~5 ~ 0.3 0.3 0.3 0.05 8
particle minecraft:white_ash ~ ~10 ~ 4 1 2 0.01 28
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.38
playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 0.6 0.76
tellraw @a[scores={novahorror.fear=54..}] {"text":"§7مه غلیظ...","color":"red"}
title @a[distance=..6] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-19 ~16 ~17 {CustomName:'"§8Crow 0-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~7 ~22 ~8 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 0-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.79
execute if predicate novahorror:is_raining run particle minecraft:smoke ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=90..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 1 0.6
# End horror 000
