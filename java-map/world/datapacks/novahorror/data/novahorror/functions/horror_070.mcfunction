# Horror 070 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=54..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:slowness 6 1 true
effect give @a[scores={novahorror.fear=46..}] minecraft:mining_fatigue 8 0 true
particle minecraft:spore_blossom_air ~ ~4 ~ 0.2 0.1 0.1 0.04 13
particle minecraft:warped_spore ~ ~10 ~ 2 1 3 0.01 19
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 1.03
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.7 0.53
tellraw @a[scores={novahorror.fear=72..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..7] subtitle {"text":"§c...برگرد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-12 ~21 ~-2 {CustomName:'"§8Crow 70-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~4 ~24 ~-5 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 70-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.90
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=83..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 1 0.6
# End horror 070
