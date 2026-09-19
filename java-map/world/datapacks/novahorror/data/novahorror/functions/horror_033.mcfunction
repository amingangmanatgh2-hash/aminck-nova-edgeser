# Horror 033 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=57..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:weakness 3 1 true
effect give @a[scores={novahorror.fear=40..}] minecraft:mining_fatigue 8 1 true
particle minecraft:sculk_soul ~ ~5 ~ 0.7 0.9 1.0 0.01 8
particle minecraft:soul_fire_flame ~ ~10 ~ 3 1 4 0.01 26
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1.2 1.00
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.7 1.09
tellraw @a[scores={novahorror.fear=69..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..10] subtitle {"text":"§cکمک...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~8 ~22 ~6 {CustomName:'"§8Crow 33-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-17 ~23 ~9 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 33-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.62
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=88..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:white_ash ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:blindness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.53
summon minecraft:parrot ~-6 ~11 ~-1 {CustomName:'"§8Raven 33-21"',NoGravity:0b,Tags:["raven_33"]}
title @a[scores={novahorror.fear=73..}] actionbar {"text":"§5...زمان برگشت...","color":"dark_red"}
# End horror 033 enhanced 25 diverse
