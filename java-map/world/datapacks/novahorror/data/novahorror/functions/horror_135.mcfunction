# Horror 135 - crow_event - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=58..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:hunger 3 1 true
effect give @a[scores={novahorror.fear=51..}] minecraft:wither 8 2 true
particle minecraft:soul_fire_flame ~ ~4 ~ 0.7 0.8 0.3 0.04 18
particle minecraft:note ~ ~10 ~ 5 1 2 0.01 14
playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 0.6 0.73
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.6 0.47
tellraw @a[scores={novahorror.fear=51..}] {"text":"§7...نمی‌تونی فرار کنی...","color":"red"}
title @a[distance=..8] subtitle {"text":"§8...واقعی نیست...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-16 ~18 ~8 {CustomName:'"§8Crow 135-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-17 ~24 ~9 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 135-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 0.7 0.52
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=80..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:white_ash ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.95
summon minecraft:parrot ~-6 ~8 ~4 {CustomName:'"§8Raven 135-21"',NoGravity:0b,Tags:["raven_135"]}
title @a[scores={novahorror.fear=55..}] actionbar {"text":"§cقلبم تند میزنه...","color":"dark_red"}
# End horror 135 enhanced 25 diverse
