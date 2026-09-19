# Horror 098 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=27..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:mining_fatigue 3 1 true
effect give @a[scores={novahorror.fear=74..}] minecraft:slowness 7 2 true
particle minecraft:spore_blossom_air ~ ~2 ~ 0.3 0.4 0.1 0.07 13
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 5 1 4 0.01 10
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.9 0.63
playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.7 0.50
tellraw @a[scores={novahorror.fear=60..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..11] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-18 ~21 ~18 {CustomName:'"§8Crow 98-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~15 ~16 ~-8 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 98-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.7 0.76
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 14
tag @a[scores={novahorror.fear=86..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 098
