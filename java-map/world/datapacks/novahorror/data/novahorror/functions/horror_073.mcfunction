# Horror 073 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=30..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:slowness 6 0 true
effect give @a[scores={novahorror.fear=59..}] minecraft:weakness 7 2 true
particle minecraft:soul_fire_flame ~ ~4 ~ 0.6 0.3 0.6 0.09 13
particle minecraft:soul ~ ~10 ~ 2 1 2 0.01 21
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 1.1 0.49
playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 0.6 0.96
tellraw @a[scores={novahorror.fear=55..}] {"text":"§c...برگرد...","color":"red"}
title @a[distance=..6] subtitle {"text":"§7مه غلیظ...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~16 ~17 ~-9 {CustomName:'"§8Crow 73-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~4 ~18 ~8 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 73-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.83
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=77..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 1 0.6
# End horror 073
