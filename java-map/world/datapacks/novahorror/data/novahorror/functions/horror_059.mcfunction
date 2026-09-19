# Horror 059 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=39..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:slowness 2 1 true
effect give @a[scores={novahorror.fear=62..}] minecraft:hunger 3 2 true
particle minecraft:soul ~ ~1 ~ 0.7 0.4 0.0 0.01 9
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 2 1 5 0.01 23
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1.1 0.97
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 0.9 1.01
tellraw @a[scores={novahorror.fear=57..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..10] subtitle {"text":"§4فرار کن!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-6 ~25 ~-8 {CustomName:'"§8Crow 59-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-9 ~21 ~9 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 59-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.51
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=72..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:nausea 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 0.6 0.91
summon minecraft:parrot ~9 ~5 ~-15 {CustomName:'"§8Raven 59-21"',NoGravity:0b,Tags:["raven_59"]}
title @a[scores={novahorror.fear=79..}] actionbar {"text":"§7صدای پا...","color":"dark_red"}
# End horror 059 enhanced 25 diverse
