# Horror 144 - player_low_health - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=51..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:slowness 6 0 true
effect give @a[scores={novahorror.fear=60..}] minecraft:blindness 7 0 true
particle minecraft:warped_spore ~ ~5 ~ 0.4 0.9 0.6 0.08 16
particle minecraft:smoke ~ ~10 ~ 4 1 2 0.01 11
playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 1.0 0.56
playsound minecraft:entity.soul_sand_valley_mood ambient @a ~ ~ ~ 0.6 1.00
tellraw @a[scores={novahorror.fear=83..}] {"text":"§cکمک...","color":"red"}
title @a[distance=..10] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~3 ~25 ~16 {CustomName:'"§8Crow 144-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~19 ~20 ~17 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 144-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.95
execute if predicate novahorror:is_raining run particle minecraft:dripping_obsidian_tear ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 1 0.6
# End horror 144 player_low_health
