# Horror 125 - time_night - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=64..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:nausea 5 1 true
effect give @a[scores={novahorror.fear=72..}] minecraft:slowness 4 2 true
particle minecraft:witch ~ ~3 ~ 0.4 0.4 0.5 0.04 9
particle minecraft:note ~ ~10 ~ 3 1 5 0.01 30
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.8 0.75
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 0.9 0.41
tellraw @a[scores={novahorror.fear=50..}] {"text":"§4خون...","color":"red"}
title @a[distance=..7] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~7 ~20 ~1 {CustomName:'"§8Crow 125-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-18 ~23 ~11 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 125-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.73
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=77..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:spore_blossom_air ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:blindness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 0.6 0.80
summon minecraft:parrot ~-5 ~8 ~-15 {CustomName:'"§8Raven 125-21"',NoGravity:0b,Tags:["raven_125"]}
title @a[scores={novahorror.fear=57..}] actionbar {"text":"§cقلبم تند میزنه...","color":"dark_red"}
# End horror 125 enhanced 25 diverse
