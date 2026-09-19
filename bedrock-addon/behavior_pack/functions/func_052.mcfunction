# Horror Bedrock func 52 - forest - truly diverse
effect @a[scores={novahorror.fear=24..44}] weakness 5 0 true
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.2 0.2 0.6 0.08 7
titleraw @a[scores={novahorror.fear=79..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=82..}] blindness 2 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 1.0 0.33
playsound mob.ghast.scream @a ~ ~ ~ 0.8 0.79
effect @a[scores={novahorror.fear=65..71}] slowness 4 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.66
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4خون..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.9 0.44
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 6
tag @a[scores={novahorror.fear=75..}] add novahorror_forest
execute as @a[tag=novahorror_forest] at @s run particle minecraft:witch ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 52 forest
