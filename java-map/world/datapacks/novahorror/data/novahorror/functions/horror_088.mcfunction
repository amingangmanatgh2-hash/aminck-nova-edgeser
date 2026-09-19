# Horror 088 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=44..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:nausea 2 0 true
effect give @a[scores={novahorror.fear=54..}] minecraft:weakness 3 0 true
particle minecraft:soul ~ ~5 ~ 0.9 0.9 0.2 0.07 7
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 4 1 3 0.01 13
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 1.1 0.57
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.8 0.81
tellraw @a[scores={novahorror.fear=60..}] {"text":"§4او می‌بینه...","color":"red"}
title @a[distance=..9] subtitle {"text":"§8سایه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-6 ~23 ~-1 {CustomName:'"§8Crow 88-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-11 ~22 ~-12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 88-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.96
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 13
tag @a[scores={novahorror.fear=84..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
# End horror 088
