# Horror 110 - crow_event - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=59..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:blindness 4 0 true
effect give @a[scores={novahorror.fear=67..}] minecraft:darkness 3 2 true
particle minecraft:crimson_spore ~ ~3 ~ 0.4 0.9 0.8 0.09 6
particle minecraft:sculk_soul ~ ~10 ~ 2 1 5 0.01 30
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.8 0.79
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 0.6 0.69
tellraw @a[scores={novahorror.fear=73..}] {"text":"§4او می‌بینه...","color":"red"}
title @a[distance=..7] subtitle {"text":"§7مه غلیظ...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~1 ~24 ~8 {CustomName:'"§8Crow 110-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~0 ~16 ~18 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 110-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.86
execute if predicate novahorror:is_raining run particle minecraft:note ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=76..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 110 crow_event
