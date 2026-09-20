# Horror 145 - player_high_fear - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=65..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:hunger 2 1 true
effect give @a[scores={novahorror.fear=49..}] minecraft:darkness 4 1 true
particle minecraft:campfire_cosy_smoke ~ ~5 ~ 0.6 0.5 0.9 0.01 13
particle minecraft:white_ash ~ ~10 ~ 2 1 3 0.01 11
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 1.1 0.55
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 1.0 0.67
tellraw @a[scores={novahorror.fear=68..}] {"text":"§4او می‌بینه...","color":"red"}
title @a[distance=..12] subtitle {"text":"§4خون...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~9 ~21 ~0 {CustomName:'"§8Crow 145-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-18 ~19 ~2 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 145-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 0.7 0.95
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=85..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:weakness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.49
summon minecraft:parrot ~-10 ~7 ~-2 {CustomName:'"§8Raven 145-21"',NoGravity:0b,Tags:["raven_145"]}
title @a[scores={novahorror.fear=71..}] actionbar {"text":"§4او می‌بینه...","color":"dark_red"}
# End horror 145 enhanced 25 diverse
