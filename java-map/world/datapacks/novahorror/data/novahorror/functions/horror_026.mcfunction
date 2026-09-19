# Horror 026 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=39..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:weakness 5 1 true
effect give @a[scores={novahorror.fear=48..}] minecraft:nausea 4 2 true
particle minecraft:campfire_cosy_smoke ~ ~4 ~ 0.8 0.7 0.5 0.05 17
particle minecraft:white_ash ~ ~10 ~ 3 1 5 0.01 27
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.8 0.99
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 0.5 0.74
tellraw @a[scores={novahorror.fear=83..}] {"text":"§7چرا تنها شدم؟","color":"red"}
title @a[distance=..6] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~3 ~25 ~-12 {CustomName:'"§8Crow 26-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~14 ~17 ~9 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 26-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.55
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 13
tag @a[scores={novahorror.fear=86..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 0.6 0.55
summon minecraft:parrot ~1 ~9 ~7 {CustomName:'"§8Raven 26-21"',NoGravity:0b,Tags:["raven_26"]}
title @a[scores={novahorror.fear=80..}] actionbar {"text":"§7...نمی‌تونی فرار کنی...","color":"dark_red"}
# End horror 026 enhanced 25 diverse
