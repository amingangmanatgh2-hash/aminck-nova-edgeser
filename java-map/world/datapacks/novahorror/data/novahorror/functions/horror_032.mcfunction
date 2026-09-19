# Horror 032 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=50..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:blindness 2 1 true
effect give @a[scores={novahorror.fear=77..}] minecraft:wither 4 1 true
particle minecraft:soul ~ ~3 ~ 0.6 1.0 0.8 0.04 17
particle minecraft:crimson_spore ~ ~10 ~ 2 1 3 0.01 19
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.8 0.63
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.6 0.98
tellraw @a[scores={novahorror.fear=86..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..12] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-3 ~17 ~6 {CustomName:'"§8Crow 32-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~5 ~23 ~0 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 32-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.7 0.51
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=70..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 1 0.6
# End horror 032
