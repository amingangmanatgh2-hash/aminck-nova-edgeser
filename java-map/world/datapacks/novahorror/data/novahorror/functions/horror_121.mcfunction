# Horror 121 - time_rain - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=38..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:hunger 3 1 true
effect give @a[scores={novahorror.fear=45..}] minecraft:darkness 3 1 true
particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.7 0.9 0.5 0.03 13
particle minecraft:white_ash ~ ~10 ~ 5 1 5 0.01 18
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1.1 0.84
playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 0.8 0.88
tellraw @a[scores={novahorror.fear=87..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..9] subtitle {"text":"§8...کسی دنبالم میاد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-8 ~17 ~-18 {CustomName:'"§8Crow 121-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~5 ~21 ~-16 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 121-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.78
execute if predicate novahorror:is_raining run particle minecraft:white_ash ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=82..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 1 0.6
# End horror 121 time_rain
