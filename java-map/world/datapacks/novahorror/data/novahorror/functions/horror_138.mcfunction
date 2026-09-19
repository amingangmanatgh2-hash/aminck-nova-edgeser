# Horror 138 - jumpscare - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=62..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:hunger 3 1 true
effect give @a[scores={novahorror.fear=85..}] minecraft:darkness 6 0 true
particle minecraft:sculk_soul ~ ~5 ~ 0.3 0.3 0.9 0.07 7
particle minecraft:soul_fire_flame ~ ~10 ~ 5 1 5 0.01 30
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.9 0.32
playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.6 0.96
tellraw @a[scores={novahorror.fear=65..}] {"text":"§4فرار کن!","color":"red"}
title @a[distance=..8] subtitle {"text":"§5...زمان برگشت...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~6 ~15 ~2 {CustomName:'"§8Crow 138-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-14 ~20 ~11 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 138-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.7 0.85
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=71..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
# End horror 138 jumpscare
