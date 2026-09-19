# Horror 119 - player_low_health - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=37..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:confusion 6 0 true
effect give @a[scores={novahorror.fear=56..}] minecraft:hunger 7 2 true
particle minecraft:composter ~ ~1 ~ 0.8 0.3 0.2 0.08 6
particle minecraft:note ~ ~10 ~ 4 1 4 0.01 22
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1.0 0.37
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 1.0 0.83
tellraw @a[scores={novahorror.fear=86..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..6] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-16 ~20 ~-15 {CustomName:'"§8Crow 119-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-14 ~16 ~7 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 119-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 0.7 0.81
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=88..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:darkness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.75
summon minecraft:parrot ~-8 ~6 ~5 {CustomName:'"§8Raven 119-21"',NoGravity:0b,Tags:["raven_119"]}
title @a[scores={novahorror.fear=56..}] actionbar {"text":"§7صدای پا...","color":"dark_red"}
# End horror 119 enhanced 25 diverse
