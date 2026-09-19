# Horror 043 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=47..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:slowness 3 0 true
effect give @a[scores={novahorror.fear=67..}] minecraft:hunger 8 2 true
particle minecraft:sculk_soul ~ ~5 ~ 0.6 1.0 1.0 0.06 12
particle minecraft:white_ash ~ ~10 ~ 5 1 4 0.01 15
playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.8 1.31
playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 0.7 1.02
tellraw @a[scores={novahorror.fear=59..}] {"text":"§cنمی‌تونم نفس بکشم...","color":"red"}
title @a[distance=..8] subtitle {"text":"§c...برگرد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~14 ~17 ~-8 {CustomName:'"§8Crow 43-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-7 ~17 ~12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 43-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.80
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 043
