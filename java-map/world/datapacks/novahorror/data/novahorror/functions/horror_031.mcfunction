# Horror 031 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=52..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:mining_fatigue 5 1 true
effect give @a[scores={novahorror.fear=67..}] minecraft:nausea 4 0 true
particle minecraft:warped_spore ~ ~4 ~ 0.7 0.5 0.6 0.04 18
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 3 1 2 0.01 11
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.6 1.32
playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.9 1.04
tellraw @a[scores={novahorror.fear=77..}] {"text":"§7صدای پا...","color":"red"}
title @a[distance=..11] subtitle {"text":"§7مه غلیظ...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~3 ~19 ~-19 {CustomName:'"§8Crow 31-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~9 ~18 ~-1 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 31-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.88
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=70..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1 0.6
# End horror 031
