# Horror 028 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=28..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:wither 5 0 true
effect give @a[scores={novahorror.fear=53..}] minecraft:mining_fatigue 8 0 true
particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.7 0.6 1.0 0.03 9
particle minecraft:spore_blossom_air ~ ~10 ~ 4 1 5 0.01 13
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.90
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.7 0.60
tellraw @a[scores={novahorror.fear=71..}] {"text":"§cقلبم تند میزنه...","color":"red"}
title @a[distance=..9] subtitle {"text":"§7مه غلیظ...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-4 ~21 ~16 {CustomName:'"§8Crow 28-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~16 ~18 ~5 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 28-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.85
execute if predicate novahorror:is_raining run particle minecraft:smoke ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 1 0.6
# End horror 028
