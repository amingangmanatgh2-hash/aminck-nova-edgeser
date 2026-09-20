# Night limitations - central mechanic - night is dangerous, special rules
# FPS FIX: gamerule only once at load, not every tick - removed for performance
# execute if predicate novahorror:is_night run gamerule doDaylightCycle false
execute if predicate novahorror:is_night run effect give @a[scores={novahorror.fear=40..}] minecraft:slowness 2 0 true
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=60..}] at @s run effect give @s minecraft:weakness 3 0 true
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=70..}] at @s run effect give @s minecraft:darkness 5 0 true
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=80..}] at @s run effect give @s minecraft:blindness 3 0 true
# Cannot sleep at night when fear high
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=30..}] at @s if block ~ ~-1 ~ minecraft:bed run tellraw @s {"text":"§cنمی‌تونی بخوابی... ترست زیاده...","color":"red"}
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=30..}] at @s if block ~ ~-1 ~ minecraft:bed run effect give @s minecraft:nausea 5 0 true
# Night spawns more crows
execute if predicate novahorror:is_night as @a at @s run particle minecraft:ash ~ ~10 ~ 8 1 8 0.01 5
execute if predicate novahorror:is_night run function novahorror:events/night_crows
# Sprint blocked at night when high fear
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=60..}] at @s run scoreboard players add @s novahorror.dark 1
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=78..}] at @s run particle minecraft:soul ~ ~3 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 0.6 0.57
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=77..}] at @s run particle minecraft:sculk_soul ~ ~5 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.43
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=69..}] at @s run particle minecraft:ash ~ ~3 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.55
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=62..}] at @s run particle minecraft:white_ash ~ ~5 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.66
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=26..}] at @s run particle minecraft:soul ~ ~4 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.ambient hostile @s ~ ~ ~ 0.6 0.63
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=54..}] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.48
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=42..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 0.6 0.60
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=43..}] at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.ambient hostile @s ~ ~ ~ 0.6 0.57
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=36..}] at @s run particle minecraft:ash ~ ~3 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.66
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=63..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.ambient hostile @s ~ ~ ~ 0.6 0.75
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=70..}] at @s run particle minecraft:ash ~ ~5 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.66
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=78..}] at @s run particle minecraft:sculk_soul ~ ~3 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.51
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=23..}] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 0.6 0.50
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=77..}] at @s run particle minecraft:sculk_soul ~ ~2 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.75
execute if predicate novahorror:is_night as @a[scores={novahorror.fear=44..}] at @s run particle minecraft:soul ~ ~4 ~ 0.5 0.5 0.5 0.02 4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 0.6 0.52
