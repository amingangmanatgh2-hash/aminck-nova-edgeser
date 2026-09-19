# Horror 017 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=59..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:wither 5 1 true
effect give @a[scores={novahorror.fear=49..}] minecraft:blindness 7 1 true
particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.2 0.3 0.08 9
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 3 1 3 0.01 22
playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 1.2 0.87
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.7 0.69
tellraw @a[scores={novahorror.fear=82..}] {"text":"§8...کسی دنبالم میاد...","color":"red"}
title @a[distance=..7] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-6 ~25 ~-6 {CustomName:'"§8Crow 17-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~1 ~18 ~0 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 17-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.68
execute if predicate novahorror:is_raining run particle minecraft:dripping_obsidian_tear ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=76..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:note ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:nausea 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 0.6 0.64
summon minecraft:parrot ~6 ~10 ~-10 {CustomName:'"§8Raven 17-21"',NoGravity:0b,Tags:["raven_17"]}
title @a[scores={novahorror.fear=65..}] actionbar {"text":"§7...صدای کلاغ از ماه...","color":"dark_red"}
# End horror 017 enhanced 25 diverse
