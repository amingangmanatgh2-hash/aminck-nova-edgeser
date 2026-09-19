# Horror 081 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=25..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:blindness 6 0 true
effect give @a[scores={novahorror.fear=63..}] minecraft:hunger 3 2 true
particle minecraft:dripping_obsidian_tear ~ ~3 ~ 0.0 0.1 0.1 0.08 6
particle minecraft:witch ~ ~10 ~ 3 1 5 0.01 20
playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 1.0 1.08
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.9 0.96
tellraw @a[scores={novahorror.fear=53..}] {"text":"§cکمک...","color":"red"}
title @a[distance=..7] subtitle {"text":"§8در بسته است...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-16 ~24 ~-17 {CustomName:'"§8Crow 81-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-2 ~21 ~11 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 81-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.61
execute if predicate novahorror:is_raining run particle minecraft:smoke ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=87..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 1 0.6
# End horror 081
