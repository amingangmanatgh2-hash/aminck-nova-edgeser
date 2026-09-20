# Horror 049 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=29..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:hunger 3 0 true
effect give @a[scores={novahorror.fear=51..}] minecraft:slowness 7 0 true
particle minecraft:soul ~ ~1 ~ 0.4 0.5 0.5 0.08 18
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 5 1 3 0.01 11
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.8 0.50
playsound minecraft:entity.soul_sand_valley_mood ambient @a ~ ~ ~ 0.8 0.88
tellraw @a[scores={novahorror.fear=79..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..11] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~16 ~16 ~15 {CustomName:'"§8Crow 49-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~6 ~21 ~3 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 49-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.86
execute if predicate novahorror:is_raining run particle minecraft:white_ash ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=78..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 0.6 0.69
summon minecraft:parrot ~1 ~5 ~-6 {CustomName:'"§8Raven 49-21"',NoGravity:0b,Tags:["raven_49"]}
title @a[scores={novahorror.fear=74..}] actionbar {"text":"§7مه غلیظ...","color":"dark_red"}
# End horror 049 enhanced 25 diverse
