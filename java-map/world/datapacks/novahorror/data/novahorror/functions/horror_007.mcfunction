# Horror 007 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=51..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:blindness 4 1 true
effect give @a[scores={novahorror.fear=47..}] minecraft:slowness 7 0 true
particle minecraft:ash ~ ~3 ~ 0.9 0.1 0.3 0.06 13
particle minecraft:spore_blossom_air ~ ~10 ~ 5 1 2 0.01 27
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 1.1 0.55
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.6 1.00
tellraw @a[scores={novahorror.fear=70..}] {"text":"§4خون...","color":"red"}
title @a[distance=..7] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-16 ~15 ~11 {CustomName:'"§8Crow 7-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-6 ~18 ~-9 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 7-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.69
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 13
tag @a[scores={novahorror.fear=72..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 1 0.6
# End horror 007
