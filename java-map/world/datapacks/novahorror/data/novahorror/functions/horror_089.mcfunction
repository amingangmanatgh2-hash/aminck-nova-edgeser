# Horror 089 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=37..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:blindness 2 0 true
effect give @a[scores={novahorror.fear=57..}] minecraft:hunger 6 1 true
particle minecraft:ash ~ ~4 ~ 0.3 0.0 0.3 0.04 7
particle minecraft:witch ~ ~10 ~ 2 1 5 0.01 19
playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 1.1 0.44
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.8 0.79
tellraw @a[scores={novahorror.fear=68..}] {"text":"§4خون...","color":"red"}
title @a[distance=..12] subtitle {"text":"§8در بسته است...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-4 ~15 ~9 {CustomName:'"§8Crow 89-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-1 ~24 ~-6 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 89-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.51
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 14
tag @a[scores={novahorror.fear=77..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.portal.ambient hostile @s ~ ~ ~ 0.6 0.77
summon minecraft:parrot ~3 ~9 ~-10 {CustomName:'"§8Raven 89-21"',NoGravity:0b,Tags:["raven_89"]}
title @a[scores={novahorror.fear=72..}] actionbar {"text":"§8در بسته است...","color":"dark_red"}
# End horror 089 enhanced 25 diverse
