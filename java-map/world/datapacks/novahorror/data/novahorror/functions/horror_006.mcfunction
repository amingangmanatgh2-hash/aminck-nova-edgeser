# Horror 006 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=45..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:hunger 2 0 true
effect give @a[scores={novahorror.fear=55..}] minecraft:wither 3 1 true
particle minecraft:campfire_cosy_smoke ~ ~4 ~ 0.2 0.5 0.3 0.08 18
particle minecraft:ash ~ ~10 ~ 3 1 2 0.01 15
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 1.1 0.62
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 1.0 1.19
tellraw @a[scores={novahorror.fear=69..}] {"text":"§8...کسی دنبالم میاد...","color":"red"}
title @a[distance=..12] subtitle {"text":"§4§lاو اینجاست!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~14 ~19 ~-19 {CustomName:'"§8Crow 6-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-13 ~17 ~-17 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 6-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.77
execute if predicate novahorror:is_raining run particle minecraft:soul ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=72..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:dripping_lava ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:weakness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.6 0.54
summon minecraft:parrot ~10 ~5 ~-9 {CustomName:'"§8Raven 6-21"',NoGravity:0b,Tags:["raven_6"]}
title @a[scores={novahorror.fear=83..}] actionbar {"text":"§cنمی‌تونم نفس بکشم...","color":"dark_red"}
# End horror 006 enhanced 25 diverse
