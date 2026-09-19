# Horror 118 - player_high_fear - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=53..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:nausea 5 1 true
effect give @a[scores={novahorror.fear=50..}] minecraft:slowness 4 1 true
particle minecraft:note ~ ~5 ~ 0.4 0.9 0.3 0.02 16
particle minecraft:soul_fire_flame ~ ~10 ~ 3 1 2 0.01 22
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.75
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.5 1.10
tellraw @a[scores={novahorror.fear=88..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..7] subtitle {"text":"§4§lاو اینجاست!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-3 ~17 ~-1 {CustomName:'"§8Crow 118-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-20 ~23 ~3 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 118-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.68
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=78..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1 0.6
# End horror 118 player_high_fear
