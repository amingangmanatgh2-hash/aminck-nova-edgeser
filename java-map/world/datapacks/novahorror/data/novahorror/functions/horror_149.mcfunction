# Horror 149 - player_high_fear - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=28..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:mining_fatigue 6 0 true
effect give @a[scores={novahorror.fear=56..}] minecraft:darkness 5 2 true
particle minecraft:sculk_soul ~ ~3 ~ 0.4 0.6 0.5 0.04 11
particle minecraft:white_ash ~ ~10 ~ 2 1 4 0.01 13
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.8 1.08
playsound minecraft:entity.zombie.ambient ambient @a ~ ~ ~ 0.5 0.69
tellraw @a[scores={novahorror.fear=51..}] {"text":"§8...کسی دنبالم میاد...","color":"red"}
title @a[distance=..8] subtitle {"text":"§7...باد نجوا می‌کند...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~7 ~16 ~-3 {CustomName:'"§8Crow 149-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~1 ~18 ~-13 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 149-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.67
execute if predicate novahorror:is_raining run particle minecraft:composter ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=74..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:slowness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 0.6 0.72
summon minecraft:parrot ~3 ~11 ~11 {CustomName:'"§8Raven 149-21"',NoGravity:0b,Tags:["raven_149"]}
title @a[scores={novahorror.fear=52..}] actionbar {"text":"§7مه غلیظ...","color":"dark_red"}
# End horror 149 enhanced 25 diverse
