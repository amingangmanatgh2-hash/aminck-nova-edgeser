# Horror 113 - player_low_health - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=37..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:mining_fatigue 5 0 true
effect give @a[scores={novahorror.fear=78..}] minecraft:hunger 6 2 true
particle minecraft:warped_spore ~ ~2 ~ 0.4 0.8 0.3 0.01 9
particle minecraft:crimson_spore ~ ~10 ~ 5 1 3 0.01 23
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 1.1 0.49
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 0.7 0.86
tellraw @a[scores={novahorror.fear=67..}] {"text":"§8...کسی دنبالم میاد...","color":"red"}
title @a[distance=..8] subtitle {"text":"§7...باد نجوا می‌کند...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:stone_bricks run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-11 ~20 ~-13 {CustomName:'"§8Crow 113-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~20 ~21 ~-15 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 113-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.56
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=86..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 113 player_low_health
