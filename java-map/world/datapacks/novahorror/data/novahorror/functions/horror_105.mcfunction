# Horror 105 - time_night - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=65..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:weakness 2 0 true
effect give @a[scores={novahorror.fear=46..}] minecraft:hunger 5 0 true
particle minecraft:soul ~ ~3 ~ 0.6 0.7 0.4 0.02 18
particle minecraft:sculk_soul ~ ~10 ~ 4 1 5 0.01 27
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1.1 1.43
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.6 0.70
tellraw @a[scores={novahorror.fear=76..}] {"text":"§7...باد نجوا می‌کند...","color":"red"}
title @a[distance=..10] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-5 ~23 ~-2 {CustomName:'"§8Crow 105-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-3 ~21 ~8 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 105-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.70
execute if predicate novahorror:is_raining run particle minecraft:note ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=80..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:warped_spore ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:blindness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 0.6 0.69
summon minecraft:parrot ~-7 ~15 ~10 {CustomName:'"§8Raven 105-21"',NoGravity:0b,Tags:["raven_105"]}
title @a[scores={novahorror.fear=59..}] actionbar {"text":"§8...کسی دنبالم میاد...","color":"dark_red"}
# End horror 105 enhanced 25 diverse
