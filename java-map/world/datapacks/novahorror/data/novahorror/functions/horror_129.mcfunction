# Horror 129 - player_low_health - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=60..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:confusion 3 0 true
effect give @a[scores={novahorror.fear=61..}] minecraft:wither 3 0 true
particle minecraft:smoke ~ ~1 ~ 0.4 0.8 0.7 0.09 17
particle minecraft:note ~ ~10 ~ 2 1 2 0.01 13
playsound minecraft:entity.skeleton.ambient hostile @a ~ ~ ~ 0.8 1.21
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 1.0 0.52
tellraw @a[scores={novahorror.fear=85..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..12] subtitle {"text":"§4فرار کن!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~18 ~21 ~-19 {CustomName:'"§8Crow 129-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~7 ~18 ~19 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 129-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.61
execute if predicate novahorror:is_raining run particle minecraft:note ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=86..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:dripping_lava ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:wither 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.6 0.90
summon minecraft:parrot ~-10 ~15 ~-1 {CustomName:'"§8Raven 129-21"',NoGravity:0b,Tags:["raven_129"]}
title @a[scores={novahorror.fear=57..}] actionbar {"text":"§7مه غلیظ...","color":"dark_red"}
# End horror 129 enhanced 25 diverse
