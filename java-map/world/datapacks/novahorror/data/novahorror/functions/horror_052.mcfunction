# Horror 052 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=40..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:wither 4 0 true
effect give @a[scores={novahorror.fear=49..}] minecraft:blindness 3 1 true
particle minecraft:crimson_spore ~ ~2 ~ 1.0 0.2 0.0 0.01 12
particle minecraft:sculk_soul ~ ~10 ~ 4 1 5 0.01 28
playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 1.2 0.37
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.9 0.94
tellraw @a[scores={novahorror.fear=71..}] {"text":"§cقلبم تند میزنه...","color":"red"}
title @a[distance=..6] subtitle {"text":"§7صدای پا...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-7 ~18 ~15 {CustomName:'"§8Crow 52-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~14 ~22 ~1 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 52-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.66
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=77..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
# End horror 052
