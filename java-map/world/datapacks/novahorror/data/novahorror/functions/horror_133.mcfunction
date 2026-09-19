# Horror 133 - crow_event - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=60..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:slowness 3 0 true
effect give @a[scores={novahorror.fear=75..}] minecraft:darkness 6 1 true
particle minecraft:white_ash ~ ~3 ~ 0.3 0.8 0.5 0.09 19
particle minecraft:soul ~ ~10 ~ 3 1 4 0.01 14
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.9 1.01
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.9 0.42
tellraw @a[scores={novahorror.fear=85..}] {"text":"§4خون...","color":"red"}
title @a[distance=..9] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-14 ~24 ~-14 {CustomName:'"§8Crow 133-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~14 ~19 ~-19 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 133-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.58
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=83..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:slowness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 0.6 0.41
summon minecraft:parrot ~14 ~13 ~-15 {CustomName:'"§8Raven 133-21"',NoGravity:0b,Tags:["raven_133"]}
title @a[scores={novahorror.fear=68..}] actionbar {"text":"§7صدای پا...","color":"dark_red"}
# End horror 133 enhanced 25 diverse
