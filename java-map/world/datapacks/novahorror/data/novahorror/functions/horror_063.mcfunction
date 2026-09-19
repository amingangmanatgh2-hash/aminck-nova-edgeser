# Horror 063 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=50..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:weakness 3 1 true
effect give @a[scores={novahorror.fear=70..}] minecraft:darkness 3 0 true
particle minecraft:spore_blossom_air ~ ~3 ~ 0.1 0.2 0.5 0.09 15
particle minecraft:witch ~ ~10 ~ 5 1 5 0.01 28
playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 1.0 0.34
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.6 0.88
tellraw @a[scores={novahorror.fear=59..}] {"text":"§4او می‌بینه...","color":"red"}
title @a[distance=..10] subtitle {"text":"§7مه غلیظ...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-3 ~23 ~10 {CustomName:'"§8Crow 63-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~2 ~23 ~0 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 63-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.64
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=81..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
# End horror 063
