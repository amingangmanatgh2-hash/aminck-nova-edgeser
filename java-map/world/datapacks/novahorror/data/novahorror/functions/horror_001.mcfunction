# Horror 001 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=54..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:slowness 3 1 true
effect give @a[scores={novahorror.fear=48..}] minecraft:weakness 4 2 true
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 1.0 0.08 8
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 5 1 5 0.01 21
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 1.1 1.34
playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.6 0.42
tellraw @a[scores={novahorror.fear=78..}] {"text":"§4خون...","color":"red"}
title @a[distance=..11] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-12 ~22 ~-2 {CustomName:'"§8Crow 1-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~8 ~22 ~-2 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 1-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.73
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=71..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:warped_spore ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:blindness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 0.6 0.82
summon minecraft:parrot ~-7 ~11 ~13 {CustomName:'"§8Raven 1-21"',NoGravity:0b,Tags:["raven_1"]}
title @a[scores={novahorror.fear=75..}] actionbar {"text":"§cکمک...","color":"dark_red"}
# End horror 001 enhanced 25 diverse
