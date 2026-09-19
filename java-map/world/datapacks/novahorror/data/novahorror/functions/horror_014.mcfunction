# Horror 014 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=50..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:hunger 6 0 true
effect give @a[scores={novahorror.fear=68..}] minecraft:wither 3 2 true
particle minecraft:ash ~ ~4 ~ 0.2 0.9 0.5 0.06 16
particle minecraft:white_ash ~ ~10 ~ 2 1 5 0.01 19
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.9 1.31
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.9 0.55
tellraw @a[scores={novahorror.fear=69..}] {"text":"§4او می‌بینه...","color":"red"}
title @a[distance=..12] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~8 ~22 ~13 {CustomName:'"§8Crow 14-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~15 ~22 ~2 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 14-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.78
execute if predicate novahorror:is_raining run particle minecraft:smoke ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=89..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:darkness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 0.6 0.65
summon minecraft:parrot ~1 ~10 ~8 {CustomName:'"§8Raven 14-21"',NoGravity:0b,Tags:["raven_14"]}
title @a[scores={novahorror.fear=72..}] actionbar {"text":"§7صدای پا...","color":"dark_red"}
# End horror 014 enhanced 25 diverse
