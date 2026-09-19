# Horror Bedrock func 16 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=12..45}] wither 4 0 true
particle minecraft:sculk_soul ~ ~1 ~ 0.4 0.6 0.6 0.06 8
titleraw @a[scores={novahorror.fear=82..}] title {"rawtext":[{"text":"§7صدای پا..."}]}
effect @a[scores={novahorror.fear=85..}] blindness 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.roar @a ~ ~ ~ 0.9 0.32
playsound block.bell.hit @a ~ ~ ~ 0.5 0.74
effect @a[scores={novahorror.fear=59..73}] darkness 4 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.77
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8در بسته است..."}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.68
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 5
# End 16
