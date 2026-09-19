# Horror 142 - jumpscare - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=63..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:mining_fatigue 2 1 true
effect give @a[scores={novahorror.fear=49..}] minecraft:slowness 8 1 true
particle minecraft:soul ~ ~4 ~ 0.5 1.0 0.4 0.01 15
particle minecraft:soul_fire_flame ~ ~10 ~ 2 1 5 0.01 14
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 1.0 0.51
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 0.8 0.71
tellraw @a[scores={novahorror.fear=72..}] {"text":"§8...کسی دنبالم میاد...","color":"red"}
title @a[distance=..12] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:stone_bricks run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-8 ~22 ~-11 {CustomName:'"§8Crow 142-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~12 ~18 ~3 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 142-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.80
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=71..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 1 0.6
# End horror 142 jumpscare
