# Horror 020 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=54..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:mining_fatigue 5 1 true
effect give @a[scores={novahorror.fear=51..}] minecraft:slowness 8 0 true
particle minecraft:sculk_soul ~ ~3 ~ 0.4 0.3 0.7 0.08 13
particle minecraft:soul ~ ~10 ~ 3 1 4 0.01 23
playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.8 1.26
playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 0.8 0.84
tellraw @a[scores={novahorror.fear=62..}] {"text":"§7مه غلیظ...","color":"red"}
title @a[distance=..7] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-9 ~18 ~-9 {CustomName:'"§8Crow 20-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-9 ~19 ~-2 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 20-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.98
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=79..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:warped_spore ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:blindness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 0.6 0.75
summon minecraft:parrot ~4 ~7 ~-5 {CustomName:'"§8Raven 20-21"',NoGravity:0b,Tags:["raven_20"]}
title @a[scores={novahorror.fear=75..}] actionbar {"text":"§7چرا تنها شدم؟","color":"dark_red"}
# End horror 020 enhanced 25 diverse
