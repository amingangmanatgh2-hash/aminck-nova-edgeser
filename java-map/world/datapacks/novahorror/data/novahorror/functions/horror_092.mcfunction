# Horror 092 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=30..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:hunger 4 0 true
effect give @a[scores={novahorror.fear=61..}] minecraft:nausea 4 0 true
particle minecraft:warped_spore ~ ~3 ~ 0.6 0.6 0.2 0.09 7
particle minecraft:soul ~ ~10 ~ 3 1 2 0.01 21
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 1.1 1.22
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.7 0.50
tellraw @a[scores={novahorror.fear=74..}] {"text":"§cکمک...","color":"red"}
title @a[distance=..11] subtitle {"text":"§4فرار کن!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-18 ~23 ~-19 {CustomName:'"§8Crow 92-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-7 ~19 ~-17 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 92-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.59
execute if predicate novahorror:is_raining run particle minecraft:crimson_spore ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=77..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:note ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:weakness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.47
summon minecraft:parrot ~9 ~12 ~-13 {CustomName:'"§8Raven 92-21"',NoGravity:0b,Tags:["raven_92"]}
title @a[scores={novahorror.fear=55..}] actionbar {"text":"§7...صدای کلاغ از ماه...","color":"dark_red"}
# End horror 092 enhanced 25 diverse
