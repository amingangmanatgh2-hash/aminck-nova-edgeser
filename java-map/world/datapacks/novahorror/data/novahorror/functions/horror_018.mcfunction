# Horror 018 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=38..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:weakness 4 1 true
effect give @a[scores={novahorror.fear=54..}] minecraft:slowness 3 2 true
particle minecraft:campfire_cosy_smoke ~ ~2 ~ 0.5 0.7 0.4 0.04 15
particle minecraft:ash ~ ~10 ~ 2 1 4 0.01 27
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1.1 0.75
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.6 1.08
tellraw @a[scores={novahorror.fear=58..}] {"text":"§4§lاو اینجاست!","color":"red"}
title @a[distance=..6] subtitle {"text":"§4خون...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-5 ~20 ~20 {CustomName:'"§8Crow 18-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-12 ~20 ~4 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 18-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.84
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=83..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 1 0.6
# End horror 018
