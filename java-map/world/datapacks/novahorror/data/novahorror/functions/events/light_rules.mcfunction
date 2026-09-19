# Light rules - central mechanic - separate game feeling - light impacts fear and horror
# Torches flicker and extinguish near horror
execute as @e[type=monster,tag=novahorror_horror] at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute as @e[type=monster,tag=novahorror_horror,scores={novahorror.timer=0}] at @s if block ~ ~-1 ~ minecraft:torch run setblock ~ ~-1 ~ minecraft:air replace
execute as @e[type=monster,tag=novahorror_horror] at @s if block ~ ~-1 ~ minecraft:wall_torch run setblock ~ ~-1 ~ minecraft:air replace
execute as @e[type=monster,tag=novahorror_horror] at @s if block ~ ~-1 ~ minecraft:lantern run setblock ~ ~-1 ~ minecraft:air replace
# Light level impacts fear - dark increases fear
execute as @a at @s if predicate novahorror:is_in_dark run scoreboard players add @s novahorror.fear 1
execute as @a at @s if predicate novahorror:is_in_dark run particle minecraft:ash ~ ~1 ~ 0.3 0.3 0.3 0.01 2
execute as @a at @s if predicate novahorror:is_in_light run scoreboard players remove @s[scores={novahorror.fear=1..}] novahorror.fear 1
# Torch place gives temporary safety
execute as @a at @s if block ~ ~-1 ~ minecraft:torch run effect give @s minecraft:resistance 2 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:lantern run effect give @s minecraft:resistance 3 0 true
# Fear makes torches flicker more
execute as @a[scores={novahorror.fear=60..}] at @s run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.01 2
execute as @a[scores={novahorror.fear=80..}] at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.02 4
execute as @a[scores={novahorror.fear=34..}] at @s if block ~ ~-1 ~ minecraft:soul_lantern run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=43..}] at @s if block ~ ~-1 ~ minecraft:soul_torch run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=54..}] at @s if block ~ ~-1 ~ minecraft:torch run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=78..}] at @s if block ~ ~-1 ~ minecraft:soul_lantern run particle minecraft:smoke ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=38..}] at @s if block ~ ~-1 ~ minecraft:torch run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=64..}] at @s if block ~ ~-1 ~ minecraft:torch run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=26..}] at @s if block ~ ~-1 ~ minecraft:torch run particle minecraft:smoke ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=56..}] at @s if block ~ ~-1 ~ minecraft:soul_torch run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=57..}] at @s if block ~ ~-1 ~ minecraft:soul_torch run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=60..}] at @s if block ~ ~-1 ~ minecraft:lantern run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=52..}] at @s if block ~ ~-1 ~ minecraft:lantern run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=57..}] at @s if block ~ ~-1 ~ minecraft:torch run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=59..}] at @s if block ~ ~-1 ~ minecraft:lantern run particle minecraft:smoke ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=53..}] at @s if block ~ ~-1 ~ minecraft:torch run particle minecraft:smoke ~ ~1 ~ 0.2 0.2 0.2 0.01 3
execute as @a[scores={novahorror.fear=54..}] at @s if block ~ ~-1 ~ minecraft:soul_torch run particle minecraft:smoke ~ ~1 ~ 0.2 0.2 0.2 0.01 3
