# Horror 034 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=45..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:darkness 6 0 true
effect give @a[scores={novahorror.fear=42..}] minecraft:weakness 5 0 true
particle minecraft:warped_spore ~ ~3 ~ 0.4 0.1 0.7 0.05 19
particle minecraft:crimson_spore ~ ~10 ~ 4 1 5 0.01 22
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1.2 0.48
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 0.9 0.42
tellraw @a[scores={novahorror.fear=86..}] {"text":"§4او می‌بینه...","color":"red"}
title @a[distance=..7] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-11 ~25 ~16 {CustomName:'"§8Crow 34-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~20 ~16 ~20 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 34-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.95
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=72..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:darkness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 0.6 0.85
summon minecraft:parrot ~-7 ~12 ~-4 {CustomName:'"§8Raven 34-21"',NoGravity:0b,Tags:["raven_34"]}
title @a[scores={novahorror.fear=71..}] actionbar {"text":"§4فرار کن!","color":"dark_red"}
# End horror 034 enhanced 25 diverse
