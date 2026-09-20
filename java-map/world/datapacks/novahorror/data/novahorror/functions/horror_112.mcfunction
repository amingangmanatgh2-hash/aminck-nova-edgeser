# Horror 112 - time_night - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=39..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:mining_fatigue 4 0 true
effect give @a[scores={novahorror.fear=47..}] minecraft:weakness 5 1 true
particle minecraft:soul ~ ~5 ~ 0.5 0.3 0.5 0.01 18
particle minecraft:smoke ~ ~10 ~ 3 1 2 0.01 14
playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 1.1 0.62
playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.7 1.12
tellraw @a[scores={novahorror.fear=78..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..7] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~1 ~16 ~17 {CustomName:'"§8Crow 112-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-13 ~23 ~-15 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 112-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.61
execute if predicate novahorror:is_raining run particle minecraft:note ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.79
summon minecraft:parrot ~-11 ~11 ~-15 {CustomName:'"§8Raven 112-21"',NoGravity:0b,Tags:["raven_112"]}
title @a[scores={novahorror.fear=73..}] actionbar {"text":"§8...الارا منتظره...","color":"dark_red"}
# End horror 112 enhanced 25 diverse
