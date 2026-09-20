# Horror 123 - time_rain - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=31..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:confusion 5 1 true
effect give @a[scores={novahorror.fear=60..}] minecraft:wither 6 1 true
particle minecraft:witch ~ ~1 ~ 0.6 0.8 0.2 0.02 19
particle minecraft:ash ~ ~10 ~ 3 1 3 0.01 15
playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 1.1 0.53
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.5 1.11
tellraw @a[scores={novahorror.fear=50..}] {"text":"§cقلبم تند میزنه...","color":"red"}
title @a[distance=..9] subtitle {"text":"§8...کسی دنبالم میاد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~5 ~15 ~2 {CustomName:'"§8Crow 123-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~3 ~22 ~-4 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 123-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.61
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=74..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:wither 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.88
summon minecraft:parrot ~12 ~13 ~-10 {CustomName:'"§8Raven 123-21"',NoGravity:0b,Tags:["raven_123"]}
title @a[scores={novahorror.fear=73..}] actionbar {"text":"§8...واقعی نیست...","color":"dark_red"}
# End horror 123 enhanced 25 diverse
