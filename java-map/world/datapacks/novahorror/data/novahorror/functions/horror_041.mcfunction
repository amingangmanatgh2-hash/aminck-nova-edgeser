# Horror 041 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=20..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:mining_fatigue 5 1 true
effect give @a[scores={novahorror.fear=61..}] minecraft:slowness 7 2 true
particle minecraft:ash ~ ~5 ~ 0.7 0.4 0.8 0.04 11
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 5 1 3 0.01 14
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.9 0.84
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 0.6 0.88
tellraw @a[scores={novahorror.fear=79..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..9] subtitle {"text":"§4§lاو اینجاست!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-5 ~23 ~-13 {CustomName:'"§8Crow 41-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~5 ~18 ~-8 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 41-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.98
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 15
tag @a[scores={novahorror.fear=81..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.6 0.70
summon minecraft:parrot ~-10 ~15 ~-10 {CustomName:'"§8Raven 41-21"',NoGravity:0b,Tags:["raven_41"]}
title @a[scores={novahorror.fear=78..}] actionbar {"text":"§7...نمی‌تونی فرار کنی...","color":"dark_red"}
# End horror 041 enhanced 25 diverse
