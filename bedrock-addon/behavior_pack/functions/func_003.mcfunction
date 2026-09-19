# Horror Bedrock func 3 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=17..45}] blindness 5 0 true
particle minecraft:white_ash ~ ~1 ~ 0.3 0.3 0.5 0.07 6
titleraw @a[scores={novahorror.fear=84..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=76..}] wither 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.66
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.38
effect @a[scores={novahorror.fear=56..72}] darkness 4 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.66
particle minecraft:basic_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7صدای پا..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.75
particle minecraft:ash ~ ~ ~ 1 1 1 0.1 6
# End 3
