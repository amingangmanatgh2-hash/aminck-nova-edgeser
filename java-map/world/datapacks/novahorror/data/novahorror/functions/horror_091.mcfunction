# Horror 091 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=58..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:hunger 2 0 true
effect give @a[scores={novahorror.fear=42..}] minecraft:weakness 3 1 true
particle minecraft:witch ~ ~5 ~ 0.2 1.0 0.5 0.04 11
particle minecraft:warped_spore ~ ~10 ~ 4 1 4 0.01 11
playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.7 1.45
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.9 1.18
tellraw @a[scores={novahorror.fear=88..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..7] subtitle {"text":"§7مه غلیظ...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-4 ~18 ~-14 {CustomName:'"§8Crow 91-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-14 ~23 ~10 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 91-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.58
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=70..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 1 0.6
# End horror 091
