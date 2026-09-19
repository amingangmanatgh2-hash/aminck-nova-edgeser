# Horror 076 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=49..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:slowness 2 1 true
effect give @a[scores={novahorror.fear=65..}] minecraft:weakness 3 1 true
particle minecraft:warped_spore ~ ~1 ~ 0.2 0.4 0.8 0.06 13
particle minecraft:soul ~ ~10 ~ 4 1 3 0.01 18
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.8 0.61
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.6 0.50
tellraw @a[scores={novahorror.fear=88..}] {"text":"§7صدای پا...","color":"red"}
title @a[distance=..11] subtitle {"text":"§8در بسته است...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-8 ~20 ~4 {CustomName:'"§8Crow 76-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~5 ~16 ~1 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 76-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.67
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=89..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 1 0.6
# End horror 076
