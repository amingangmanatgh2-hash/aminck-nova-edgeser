# Horror 002 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=39..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:nausea 5 0 true
effect give @a[scores={novahorror.fear=72..}] minecraft:mining_fatigue 6 2 true
particle minecraft:ash ~ ~2 ~ 0.4 0.3 0.1 0.03 18
particle minecraft:crimson_spore ~ ~10 ~ 5 1 2 0.01 16
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.9 1.50
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.7 1.16
tellraw @a[scores={novahorror.fear=50..}] {"text":"§4§lاو اینجاست!","color":"red"}
title @a[distance=..10] subtitle {"text":"§8سایه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~20 ~15 ~16 {CustomName:'"§8Crow 2-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~14 ~21 ~-4 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 2-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.75
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=78..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:blindness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.98
summon minecraft:parrot ~5 ~13 ~-9 {CustomName:'"§8Raven 2-21"',NoGravity:0b,Tags:["raven_2"]}
title @a[scores={novahorror.fear=71..}] actionbar {"text":"§4خون...","color":"dark_red"}
# End horror 002 enhanced 25 diverse
