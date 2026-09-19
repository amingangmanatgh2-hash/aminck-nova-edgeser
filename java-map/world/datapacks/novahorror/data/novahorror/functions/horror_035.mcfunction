# Horror 035 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=23..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:wither 6 1 true
effect give @a[scores={novahorror.fear=67..}] minecraft:nausea 3 1 true
particle minecraft:ash ~ ~3 ~ 0.3 0.9 0.5 0.02 19
particle minecraft:soul_fire_flame ~ ~10 ~ 3 1 3 0.01 13
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1.1 1.18
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.5 0.77
tellraw @a[scores={novahorror.fear=77..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..10] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~11 ~21 ~-16 {CustomName:'"§8Crow 35-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-8 ~19 ~17 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 35-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.82
execute if predicate novahorror:is_raining run particle minecraft:dripping_obsidian_tear ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=85..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
# End horror 035
