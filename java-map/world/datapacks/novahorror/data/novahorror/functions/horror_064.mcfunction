# Horror 064 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=46..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:wither 6 0 true
effect give @a[scores={novahorror.fear=62..}] minecraft:hunger 8 1 true
particle minecraft:soul_fire_flame ~ ~4 ~ 0.7 0.0 0.8 0.05 8
particle minecraft:witch ~ ~10 ~ 3 1 2 0.01 24
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.8 0.79
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.9 0.86
tellraw @a[scores={novahorror.fear=51..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..8] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~19 ~21 ~-10 {CustomName:'"§8Crow 64-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~10 ~18 ~11 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 64-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.69
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 14
tag @a[scores={novahorror.fear=85..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 1 0.6
# End horror 064
