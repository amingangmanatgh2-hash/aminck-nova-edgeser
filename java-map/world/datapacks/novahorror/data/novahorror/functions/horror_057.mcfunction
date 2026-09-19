# Horror 057 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=29..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:blindness 4 0 true
effect give @a[scores={novahorror.fear=78..}] minecraft:slowness 6 1 true
particle minecraft:witch ~ ~4 ~ 0.5 0.8 0.2 0.01 19
particle minecraft:warped_spore ~ ~10 ~ 2 1 2 0.01 24
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.9 0.31
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.9 1.11
tellraw @a[scores={novahorror.fear=54..}] {"text":"§7چرا تنها شدم؟","color":"red"}
title @a[distance=..11] subtitle {"text":"§8...کسی دنبالم میاد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~0 ~15 ~-14 {CustomName:'"§8Crow 57-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-18 ~21 ~11 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 57-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.63
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=71..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 1 0.6
# End horror 057
