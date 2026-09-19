# Horror 109 - time_night - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=56..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:wither 2 1 true
effect give @a[scores={novahorror.fear=56..}] minecraft:mining_fatigue 6 1 true
particle minecraft:crimson_spore ~ ~5 ~ 0.2 0.8 0.5 0.05 7
particle minecraft:note ~ ~10 ~ 2 1 5 0.01 24
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.9 1.11
playsound minecraft:block.amethyst_block.chime ambient @a ~ ~ ~ 0.6 0.91
tellraw @a[scores={novahorror.fear=82..}] {"text":"§4فرار کن!","color":"red"}
title @a[distance=..9] subtitle {"text":"§7چرا تنها شدم؟","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~17 ~15 ~-7 {CustomName:'"§8Crow 109-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~14 ~23 ~-5 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 109-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 1.00
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=71..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 109 time_night
