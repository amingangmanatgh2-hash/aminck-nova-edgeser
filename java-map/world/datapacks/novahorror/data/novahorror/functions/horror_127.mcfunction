# Horror 127 - player_high_fear - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=26..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:mining_fatigue 2 0 true
effect give @a[scores={novahorror.fear=72..}] minecraft:weakness 3 2 true
particle minecraft:white_ash ~ ~3 ~ 0.8 0.2 0.4 0.02 12
particle minecraft:spore_blossom_air ~ ~10 ~ 4 1 4 0.01 30
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1.0 0.40
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.8 0.43
tellraw @a[scores={novahorror.fear=58..}] {"text":"§4§lاو اینجاست!","color":"red"}
title @a[distance=..10] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~19 ~22 ~-8 {CustomName:'"§8Crow 127-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~12 ~17 ~3 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 127-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.99
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=73..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:levitation 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.69
summon minecraft:parrot ~1 ~7 ~7 {CustomName:'"§8Raven 127-21"',NoGravity:0b,Tags:["raven_127"]}
title @a[scores={novahorror.fear=74..}] actionbar {"text":"§8...کسی دنبالم میاد...","color":"dark_red"}
# End horror 127 enhanced 25 diverse
