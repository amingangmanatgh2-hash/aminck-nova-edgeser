# Horror 090 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=43..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:weakness 2 0 true
effect give @a[scores={novahorror.fear=79..}] minecraft:darkness 8 2 true
particle minecraft:soul_fire_flame ~ ~2 ~ 0.6 0.1 1.0 0.03 18
particle minecraft:sculk_soul ~ ~10 ~ 4 1 3 0.01 19
playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.8 0.50
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.9 0.60
tellraw @a[scores={novahorror.fear=72..}] {"text":"§4خون...","color":"red"}
title @a[distance=..11] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-15 ~19 ~-6 {CustomName:'"§8Crow 90-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-7 ~17 ~-6 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 90-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 1.00
execute if predicate novahorror:is_raining run particle minecraft:white_ash ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:hunger 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.6 0.46
summon minecraft:parrot ~-1 ~11 ~-15 {CustomName:'"§8Raven 90-21"',NoGravity:0b,Tags:["raven_90"]}
title @a[scores={novahorror.fear=68..}] actionbar {"text":"§c...برگرد...","color":"dark_red"}
# End horror 090 enhanced 25 diverse
