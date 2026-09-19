# Horror 068 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=21..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:blindness 2 1 true
effect give @a[scores={novahorror.fear=40..}] minecraft:hunger 3 0 true
particle minecraft:spore_blossom_air ~ ~4 ~ 0.3 0.5 0.1 0.07 16
particle minecraft:witch ~ ~10 ~ 3 1 4 0.01 24
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1.0 1.48
playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.7 1.12
tellraw @a[scores={novahorror.fear=64..}] {"text":"§cقلبم تند میزنه...","color":"red"}
title @a[distance=..10] subtitle {"text":"§8در بسته است...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~9 ~23 ~7 {CustomName:'"§8Crow 68-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~2 ~17 ~10 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 68-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.80
execute if predicate novahorror:is_raining run particle minecraft:white_ash ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=80..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1 0.6
# End horror 068
