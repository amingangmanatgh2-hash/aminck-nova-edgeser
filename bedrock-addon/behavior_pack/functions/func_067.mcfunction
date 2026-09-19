# Horror Bedrock func 67 - low_health - truly diverse
effect @a[scores={novahorror.fear=15..40}] weakness 4 0 true
particle minecraft:ash ~ ~1 ~ 0.7 0.2 0.6 0.05 6
titleraw @a[scores={novahorror.fear=72..}] title {"rawtext":[{"text":"§4فرار کن!"}]}
effect @a[scores={novahorror.fear=90..}] darkness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.8 0.75
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.87
effect @a[scores={novahorror.fear=55..85}] wither 4 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.99
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.warden.roar @a ~ ~ ~ 0.6 0.60
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 13
tag @a[scores={novahorror.fear=68..}] add novahorror_low_health
execute as @a[tag=novahorror_low_health] at @s run particle minecraft:campfire_cosy_smoke ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 67 low_health
