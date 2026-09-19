# Horror 124 - location_mansion - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=44..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:confusion 4 1 true
effect give @a[scores={novahorror.fear=84..}] minecraft:nausea 8 2 true
particle minecraft:smoke ~ ~3 ~ 0.4 0.3 0.6 0.01 14
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 5 1 2 0.01 13
playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 0.8 1.48
playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.7 1.12
tellraw @a[scores={novahorror.fear=70..}] {"text":"§cقلبم تند میزنه...","color":"red"}
title @a[distance=..6] subtitle {"text":"§c...برگرد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-14 ~18 ~8 {CustomName:'"§8Crow 124-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-18 ~21 ~15 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 124-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.81
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame_emitter ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=83..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 124 location_mansion
