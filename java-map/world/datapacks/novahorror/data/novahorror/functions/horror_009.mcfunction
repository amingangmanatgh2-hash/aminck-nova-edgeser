# Horror 009 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=29..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:darkness 5 0 true
effect give @a[scores={novahorror.fear=46..}] minecraft:weakness 8 0 true
particle minecraft:crimson_spore ~ ~2 ~ 0.5 0.4 0.1 0.08 6
particle minecraft:sculk_soul ~ ~10 ~ 2 1 5 0.01 15
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.9 0.83
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.6 0.63
tellraw @a[scores={novahorror.fear=69..}] {"text":"§7صدای پا...","color":"red"}
title @a[distance=..9] subtitle {"text":"§7چرا تنها شدم؟","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-2 ~24 ~5 {CustomName:'"§8Crow 9-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~4 ~16 ~-6 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 9-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.60
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=70..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:note ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.92
summon minecraft:parrot ~0 ~5 ~13 {CustomName:'"§8Raven 9-21"',NoGravity:0b,Tags:["raven_9"]}
title @a[scores={novahorror.fear=52..}] actionbar {"text":"§7...نمی‌تونی فرار کنی...","color":"dark_red"}
# End horror 009 enhanced 25 diverse
