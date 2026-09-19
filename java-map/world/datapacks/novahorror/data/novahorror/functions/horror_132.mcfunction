# Horror 132 - player_high_fear - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=42..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:slowness 6 1 true
effect give @a[scores={novahorror.fear=71..}] minecraft:weakness 7 2 true
particle minecraft:smoke ~ ~5 ~ 0.5 0.6 0.7 0.09 20
particle minecraft:spore_blossom_air ~ ~10 ~ 5 1 5 0.01 30
playsound minecraft:entity.skeleton.ambient hostile @a ~ ~ ~ 1.2 0.31
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.6 0.51
tellraw @a[scores={novahorror.fear=51..}] {"text":"§5...زمان برگشت...","color":"red"}
title @a[distance=..9] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-11 ~21 ~-19 {CustomName:'"§8Crow 132-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-10 ~21 ~3 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 132-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.7 0.93
execute if predicate novahorror:is_raining run particle minecraft:smoke ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 132 player_high_fear
