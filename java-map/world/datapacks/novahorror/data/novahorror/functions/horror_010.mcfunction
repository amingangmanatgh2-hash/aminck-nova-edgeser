# Horror 010 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=59..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:darkness 4 0 true
effect give @a[scores={novahorror.fear=73..}] minecraft:mining_fatigue 8 1 true
particle minecraft:soul_fire_flame ~ ~3 ~ 0.5 0.4 0.5 0.02 7
particle minecraft:witch ~ ~10 ~ 4 1 4 0.01 14
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.8 1.39
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.80
tellraw @a[scores={novahorror.fear=70..}] {"text":"§4§lاو اینجاست!","color":"red"}
title @a[distance=..10] subtitle {"text":"§4خون...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~7 ~22 ~-3 {CustomName:'"§8Crow 10-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~20 ~24 ~-15 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 10-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.66
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 13
tag @a[scores={novahorror.fear=74..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:hunger 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 0.6 0.79
summon minecraft:parrot ~-7 ~6 ~13 {CustomName:'"§8Raven 10-21"',NoGravity:0b,Tags:["raven_10"]}
title @a[scores={novahorror.fear=85..}] actionbar {"text":"§c...برگرد...","color":"dark_red"}
# End horror 010 enhanced 25 diverse
