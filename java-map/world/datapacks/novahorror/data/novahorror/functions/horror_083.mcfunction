# Horror 083 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=24..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:slowness 6 1 true
effect give @a[scores={novahorror.fear=52..}] minecraft:weakness 4 1 true
particle minecraft:dripping_obsidian_tear ~ ~2 ~ 0.7 0.2 0.1 0.05 19
particle minecraft:ash ~ ~10 ~ 3 1 2 0.01 25
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.44
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 1.0 1.05
tellraw @a[scores={novahorror.fear=66..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..11] subtitle {"text":"§cکمک...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~16 ~19 ~-16 {CustomName:'"§8Crow 83-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~11 ~22 ~-16 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 83-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.7 0.63
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 15
tag @a[scores={novahorror.fear=76..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1 0.6
# End horror 083
