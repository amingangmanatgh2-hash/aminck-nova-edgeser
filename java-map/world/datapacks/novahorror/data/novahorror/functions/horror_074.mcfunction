# Horror 074 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=60..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:weakness 2 1 true
effect give @a[scores={novahorror.fear=72..}] minecraft:hunger 3 1 true
particle minecraft:white_ash ~ ~3 ~ 0.2 0.0 0.4 0.02 5
particle minecraft:ash ~ ~10 ~ 4 1 3 0.01 12
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 1.1 0.77
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.6 0.50
tellraw @a[scores={novahorror.fear=79..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..10] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-8 ~20 ~-19 {CustomName:'"§8Crow 74-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-17 ~23 ~-11 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 74-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.89
execute if predicate novahorror:is_raining run particle minecraft:smoke ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=74..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:weakness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.portal.ambient hostile @s ~ ~ ~ 0.6 0.77
summon minecraft:parrot ~2 ~15 ~-12 {CustomName:'"§8Raven 74-21"',NoGravity:0b,Tags:["raven_74"]}
title @a[scores={novahorror.fear=70..}] actionbar {"text":"§5...زمان برگشت...","color":"dark_red"}
# End horror 074 enhanced 25 diverse
