# Horror 054 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=32..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:slowness 6 0 true
effect give @a[scores={novahorror.fear=75..}] minecraft:weakness 5 0 true
particle minecraft:campfire_cosy_smoke ~ ~5 ~ 0.2 0.6 0.7 0.01 15
particle minecraft:soul_fire_flame ~ ~10 ~ 5 1 3 0.01 22
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.6 0.90
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 1.0 0.52
tellraw @a[scores={novahorror.fear=55..}] {"text":"§7چرا تنها شدم؟","color":"red"}
title @a[distance=..7] subtitle {"text":"§4§lاو اینجاست!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-13 ~24 ~-8 {CustomName:'"§8Crow 54-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~11 ~17 ~-14 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 54-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.84
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 13
tag @a[scores={novahorror.fear=89..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1 0.6
# End horror 054
