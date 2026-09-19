# Horror 038 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=22..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:mining_fatigue 6 0 true
effect give @a[scores={novahorror.fear=45..}] minecraft:slowness 4 0 true
particle minecraft:spore_blossom_air ~ ~2 ~ 0.5 0.9 0.4 0.04 14
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 5 1 5 0.01 15
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 1.2 0.85
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.8 0.52
tellraw @a[scores={novahorror.fear=60..}] {"text":"§cکمک...","color":"red"}
title @a[distance=..11] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~6 ~19 ~19 {CustomName:'"§8Crow 38-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-18 ~19 ~-15 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 38-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.81
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=89..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 038
