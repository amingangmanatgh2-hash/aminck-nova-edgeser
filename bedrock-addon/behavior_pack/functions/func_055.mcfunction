# Horror Bedrock func 55 - mansion - truly diverse
effect @a[scores={novahorror.fear=16..41}] darkness 2 0 true
particle minecraft:white_ash ~ ~1 ~ 0.5 0.6 0.3 0.07 7
titleraw @a[scores={novahorror.fear=85..}] title {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=85..}] slowness 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.74
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.69
effect @a[scores={novahorror.fear=64..79}] nausea 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.87
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8سایه..."}]}
playsound ambient.cave @a ~ ~ ~ 0.8 0.68
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 7
tag @a[scores={novahorror.fear=61..}] add novahorror_mansion
execute as @a[tag=novahorror_mansion] at @s run particle minecraft:spore_blossom_air ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 55 mansion
