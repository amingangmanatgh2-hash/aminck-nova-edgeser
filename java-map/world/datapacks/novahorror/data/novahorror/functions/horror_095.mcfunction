# Horror 095 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=48..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:weakness 3 0 true
effect give @a[scores={novahorror.fear=45..}] minecraft:nausea 8 1 true
particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.8 0.6 0.8 0.05 14
particle minecraft:spore_blossom_air ~ ~10 ~ 4 1 5 0.01 24
playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.8 0.40
playsound minecraft:entity.soul_sand_valley_mood ambient @a ~ ~ ~ 0.7 0.64
tellraw @a[scores={novahorror.fear=84..}] {"text":"§cنمی‌تونم نفس بکشم...","color":"red"}
title @a[distance=..6] subtitle {"text":"§8سایه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~20 ~17 ~-6 {CustomName:'"§8Crow 95-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-15 ~16 ~-17 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 95-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.55
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=84..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 095
