# Player state events - low health, high fear, low sanity, sprinting
execute as @a[scores={novahorror.fear=80..}] at @s run effect give @s minecraft:wither 2 0 true
execute as @a[scores={novahorror.fear=60..79}] at @s run effect give @s minecraft:blindness 3 0 true
execute as @a[scores={novahorror.fear=40..59}] at @s run effect give @s minecraft:darkness 5 0 true
execute as @a[scores={novahorror.sanity=..20}] at @s run effect give @s minecraft:nausea 5 0 true
execute as @a[scores={novahorror.sanity=..20}] at @s run particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a[nbt={Health:10.0f}] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.5
execute as @a[nbt={Health:6.0f}] at @s run effect give @s minecraft:slowness 3 1 true
execute as @a[scores={novahorror.dark=10..}] at @s run tellraw @s {"text":"§8...تاریکی..."}
execute as @a[scores={novahorror.fear=66..}] at @s run particle minecraft:spore_blossom_air ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=55..}] at @s run particle minecraft:warped_spore ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=78..}] at @s run particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=55..}] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=41..}] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=78..}] at @s run particle minecraft:white_ash ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=42..}] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=35..}] at @s run particle minecraft:witch ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=81..}] at @s run particle minecraft:warped_spore ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=65..}] at @s run particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0.02 4
