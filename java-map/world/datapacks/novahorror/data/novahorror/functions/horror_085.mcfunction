# Horror 085 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=54..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:darkness 6 1 true
effect give @a[scores={novahorror.fear=78..}] minecraft:wither 6 1 true
particle minecraft:ash ~ ~5 ~ 0.2 0.7 0.6 0.01 12
particle minecraft:warped_spore ~ ~10 ~ 3 1 4 0.01 16
playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 1.2 1.41
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.5 1.15
tellraw @a[scores={novahorror.fear=64..}] {"text":"§cکمک...","color":"red"}
title @a[distance=..12] subtitle {"text":"§7صدای پا...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~5 ~15 ~-11 {CustomName:'"§8Crow 85-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-4 ~17 ~-18 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 85-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.77
execute if predicate novahorror:is_raining run particle minecraft:soul ~ ~5 ~ 3 1 3 0.02 15
tag @a[scores={novahorror.fear=78..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 1 0.6
# End horror 085
