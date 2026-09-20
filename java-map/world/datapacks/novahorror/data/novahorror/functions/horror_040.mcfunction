# Horror 040 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=57..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:blindness 3 0 true
effect give @a[scores={novahorror.fear=55..}] minecraft:nausea 6 1 true
particle minecraft:soul ~ ~5 ~ 0.8 0.2 0.2 0.05 6
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 4 1 5 0.01 10
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1.1 0.64
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 0.7 0.96
tellraw @a[scores={novahorror.fear=75..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..12] subtitle {"text":"§cکمک...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~19 ~24 ~-1 {CustomName:'"§8Crow 40-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-10 ~19 ~-5 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 40-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.95
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=79..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:dripping_lava ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 0.6 0.74
summon minecraft:parrot ~3 ~5 ~3 {CustomName:'"§8Raven 40-21"',NoGravity:0b,Tags:["raven_40"]}
title @a[scores={novahorror.fear=84..}] actionbar {"text":"§7...صدای کلاغ از ماه...","color":"dark_red"}
# End horror 040 enhanced 25 diverse
