# Horror 122 - crow_event - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=31..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:blindness 2 1 true
effect give @a[scores={novahorror.fear=76..}] minecraft:hunger 3 1 true
particle minecraft:note ~ ~4 ~ 0.5 0.2 0.2 0.08 16
particle minecraft:soul_fire_flame ~ ~10 ~ 3 1 2 0.01 12
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.72
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 0.9 0.81
tellraw @a[scores={novahorror.fear=56..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..12] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-16 ~16 ~-14 {CustomName:'"§8Crow 122-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~3 ~16 ~16 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 122-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.80
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame_emitter ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=70..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 1 0.6
# End horror 122 crow_event
