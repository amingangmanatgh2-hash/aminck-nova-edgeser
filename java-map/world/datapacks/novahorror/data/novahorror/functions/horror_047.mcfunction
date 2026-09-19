# Horror 047 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=55..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:nausea 5 0 true
effect give @a[scores={novahorror.fear=47..}] minecraft:blindness 7 1 true
particle minecraft:crimson_spore ~ ~5 ~ 0.8 0.1 0.2 0.01 17
particle minecraft:sculk_soul ~ ~10 ~ 4 1 2 0.01 23
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.9 0.44
playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.9 0.92
tellraw @a[scores={novahorror.fear=63..}] {"text":"§4او می‌بینه...","color":"red"}
title @a[distance=..10] subtitle {"text":"§8در بسته است...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-2 ~21 ~5 {CustomName:'"§8Crow 47-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-1 ~20 ~-16 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 47-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.78
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=85..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 1 0.6
# End horror 047
