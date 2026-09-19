# Horror 024 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=37..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:wither 5 1 true
effect give @a[scores={novahorror.fear=48..}] minecraft:hunger 5 1 true
particle minecraft:soul_fire_flame ~ ~5 ~ 0.3 0.7 0.3 0.03 20
particle minecraft:soul ~ ~10 ~ 4 1 4 0.01 17
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.8 1.43
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.7 0.79
tellraw @a[scores={novahorror.fear=50..}] {"text":"§c...برگرد...","color":"red"}
title @a[distance=..9] subtitle {"text":"§8سایه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-10 ~17 ~5 {CustomName:'"§8Crow 24-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~18 ~24 ~-5 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 24-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.89
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=87..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:note ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:weakness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 0.6 0.94
summon minecraft:parrot ~-11 ~8 ~1 {CustomName:'"§8Raven 24-21"',NoGravity:0b,Tags:["raven_24"]}
title @a[scores={novahorror.fear=57..}] actionbar {"text":"§cنمی‌تونم نفس بکشم...","color":"dark_red"}
# End horror 024 enhanced 25 diverse
