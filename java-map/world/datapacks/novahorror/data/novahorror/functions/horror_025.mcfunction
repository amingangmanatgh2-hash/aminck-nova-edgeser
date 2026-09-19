# Horror 025 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=20..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:hunger 2 1 true
effect give @a[scores={novahorror.fear=78..}] minecraft:wither 3 0 true
particle minecraft:crimson_spore ~ ~1 ~ 1.0 0.9 0.4 0.04 18
particle minecraft:soul ~ ~10 ~ 3 1 3 0.01 19
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1.0 1.17
playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.9 0.50
tellraw @a[scores={novahorror.fear=56..}] {"text":"§4خون...","color":"red"}
title @a[distance=..9] subtitle {"text":"§c...برگرد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-10 ~21 ~20 {CustomName:'"§8Crow 25-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~13 ~19 ~13 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 25-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.64
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 1 0.6
# End horror 025
