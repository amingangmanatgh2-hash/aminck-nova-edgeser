# Horror Bedrock func 1 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=18..32}] nausea 3 0 true
particle minecraft:witch ~ ~1 ~ 0.7 0.5 0.6 0.04 8
titleraw @a[scores={novahorror.fear=85..}] title {"rawtext":[{"text":"§4خون..."}]}
effect @a[scores={novahorror.fear=87..}] darkness 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.37
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.68
effect @a[scores={novahorror.fear=63..84}] weakness 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.69
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cکمک..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.70
particle minecraft:basic_smoke ~ ~ ~ 1 1 1 0.1 6
execute as @a[scores={novahorror.fear=65..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=23..}] weakness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.49
tag @a[scores={novahorror.fear=87..}] add novahorror_enhanced_1
execute as @a[tag=novahorror_enhanced_1] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7...باد نجوا می‌کند..."}]}
# End 1 enhanced 22 diverse
