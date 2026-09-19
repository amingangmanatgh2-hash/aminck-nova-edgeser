# Horror 102 - player_low_health - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=41..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:hunger 5 1 true
effect give @a[scores={novahorror.fear=49..}] minecraft:mining_fatigue 5 1 true
particle minecraft:warped_spore ~ ~2 ~ 0.7 0.8 0.6 0.08 11
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 5 1 3 0.01 26
playsound minecraft:entity.skeleton.ambient hostile @a ~ ~ ~ 0.7 0.73
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 0.9 0.44
tellraw @a[scores={novahorror.fear=74..}] {"text":"§5...زمان برگشت...","color":"red"}
title @a[distance=..6] subtitle {"text":"§4§lاو اینجاست!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-17 ~23 ~-12 {CustomName:'"§8Crow 102-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-7 ~17 ~12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 102-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.74
execute if predicate novahorror:is_raining run particle minecraft:note ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:hunger 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.6 0.97
summon minecraft:parrot ~-5 ~6 ~-2 {CustomName:'"§8Raven 102-21"',NoGravity:0b,Tags:["raven_102"]}
title @a[scores={novahorror.fear=55..}] actionbar {"text":"§5...زمان برگشت...","color":"dark_red"}
# End horror 102 enhanced 25 diverse
