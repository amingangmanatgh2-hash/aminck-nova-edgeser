# Horror 012 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=43..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:wither 2 1 true
effect give @a[scores={novahorror.fear=58..}] minecraft:weakness 6 0 true
particle minecraft:soul_fire_flame ~ ~4 ~ 0.2 0.5 0.1 0.04 16
particle minecraft:soul ~ ~10 ~ 4 1 5 0.01 12
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.85
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.6 0.48
tellraw @a[scores={novahorror.fear=77..}] {"text":"§4او می‌بینه...","color":"red"}
title @a[distance=..11] subtitle {"text":"§4خون...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~17 ~17 ~-13 {CustomName:'"§8Crow 12-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-13 ~21 ~-13 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 12-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.88
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 15
tag @a[scores={novahorror.fear=74..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.77
summon minecraft:parrot ~-12 ~9 ~15 {CustomName:'"§8Raven 12-21"',NoGravity:0b,Tags:["raven_12"]}
title @a[scores={novahorror.fear=53..}] actionbar {"text":"§7...نمی‌تونی فرار کنی...","color":"dark_red"}
# End horror 012 enhanced 25 diverse
