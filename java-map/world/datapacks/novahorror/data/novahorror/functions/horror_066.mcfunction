# Horror 066 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=57..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:wither 3 1 true
effect give @a[scores={novahorror.fear=42..}] minecraft:mining_fatigue 7 0 true
particle minecraft:white_ash ~ ~3 ~ 0.6 0.4 0.9 0.02 8
particle minecraft:witch ~ ~10 ~ 2 1 4 0.01 19
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.8 1.35
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.6 1.16
tellraw @a[scores={novahorror.fear=80..}] {"text":"§cنمی‌تونم نفس بکشم...","color":"red"}
title @a[distance=..9] subtitle {"text":"§7مه غلیظ...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~6 ~24 ~-10 {CustomName:'"§8Crow 66-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~19 ~24 ~14 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 66-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.91
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=83..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:hunger 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.59
summon minecraft:parrot ~0 ~13 ~-15 {CustomName:'"§8Raven 66-21"',NoGravity:0b,Tags:["raven_66"]}
title @a[scores={novahorror.fear=53..}] actionbar {"text":"§cقلبم تند میزنه...","color":"dark_red"}
# End horror 066 enhanced 25 diverse
