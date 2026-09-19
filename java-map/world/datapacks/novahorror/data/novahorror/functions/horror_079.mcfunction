# Horror 079 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=40..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:mining_fatigue 4 1 true
effect give @a[scores={novahorror.fear=62..}] minecraft:slowness 6 2 true
particle minecraft:ash ~ ~5 ~ 0.9 0.4 0.3 0.04 17
particle minecraft:soul ~ ~10 ~ 5 1 2 0.01 22
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.9 1.25
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.7 0.83
tellraw @a[scores={novahorror.fear=89..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..12] subtitle {"text":"§cکمک...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-14 ~22 ~9 {CustomName:'"§8Crow 79-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-8 ~20 ~-18 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 79-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.7 0.63
execute if predicate novahorror:is_raining run particle minecraft:dripping_obsidian_tear ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=72..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
# End horror 079
