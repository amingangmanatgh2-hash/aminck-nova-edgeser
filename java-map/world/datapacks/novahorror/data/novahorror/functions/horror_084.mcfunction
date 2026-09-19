# Horror 084 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=20..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:blindness 5 0 true
effect give @a[scores={novahorror.fear=80..}] minecraft:wither 3 2 true
particle minecraft:warped_spore ~ ~2 ~ 0.4 0.3 0.7 0.06 5
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 5 1 3 0.01 17
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.9 0.90
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.5 0.72
tellraw @a[scores={novahorror.fear=74..}] {"text":"§cکمک...","color":"red"}
title @a[distance=..12] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~6 ~18 ~-10 {CustomName:'"§8Crow 84-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-20 ~18 ~11 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 84-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.7 0.93
execute if predicate novahorror:is_raining run particle minecraft:smoke ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=84..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 1 0.6
# End horror 084
