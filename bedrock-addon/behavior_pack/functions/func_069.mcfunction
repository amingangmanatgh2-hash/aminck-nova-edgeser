# Horror Bedrock func 69 - basement - truly diverse
effect @a[scores={novahorror.fear=14..40}] slowness 4 0 true
particle minecraft:witch ~ ~1 ~ 0.4 0.3 0.5 0.03 6
titleraw @a[scores={novahorror.fear=83..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=83..}] blindness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 0.6 0.76
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.73
effect @a[scores={novahorror.fear=63..82}] weakness 4 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.92
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8...الارا منتظره..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.43
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 5
tag @a[scores={novahorror.fear=64..}] add novahorror_basement
execute as @a[tag=novahorror_basement] at @s run particle minecraft:campfire_cosy_smoke ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 69 basement
