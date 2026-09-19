# Horror 048 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=58..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:darkness 6 0 true
effect give @a[scores={novahorror.fear=70..}] minecraft:slowness 8 2 true
particle minecraft:white_ash ~ ~4 ~ 0.9 0.7 0.6 0.04 20
particle minecraft:witch ~ ~10 ~ 3 1 5 0.01 30
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.6 1.25
playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 0.9 0.43
tellraw @a[scores={novahorror.fear=52..}] {"text":"§4فرار کن!","color":"red"}
title @a[distance=..9] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-10 ~16 ~-19 {CustomName:'"§8Crow 48-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-2 ~21 ~3 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 48-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.89
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 13
tag @a[scores={novahorror.fear=73..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 1 0.6
# End horror 048
