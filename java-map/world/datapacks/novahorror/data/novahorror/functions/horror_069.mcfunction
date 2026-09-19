# Horror 069 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=23..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:slowness 6 1 true
effect give @a[scores={novahorror.fear=74..}] minecraft:nausea 7 0 true
particle minecraft:soul ~ ~2 ~ 0.2 0.1 0.8 0.02 9
particle minecraft:witch ~ ~10 ~ 2 1 2 0.01 14
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.9 0.80
playsound minecraft:entity.soul_sand_valley_mood ambient @a ~ ~ ~ 0.6 0.81
tellraw @a[scores={novahorror.fear=57..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..9] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-4 ~17 ~-17 {CustomName:'"§8Crow 69-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-6 ~18 ~11 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 69-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.52
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=83..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
# End horror 069
