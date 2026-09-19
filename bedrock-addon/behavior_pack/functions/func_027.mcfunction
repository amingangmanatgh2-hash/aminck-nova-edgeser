# Horror Bedrock func 27 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=13..39}] wither 3 0 true
particle minecraft:white_ash ~ ~1 ~ 0.4 0.2 0.5 0.08 3
titleraw @a[scores={novahorror.fear=73..}] title {"rawtext":[{"text":"§4فرار کن!"}]}
effect @a[scores={novahorror.fear=90..}] nausea 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 0.9 0.59
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.9 0.50
effect @a[scores={novahorror.fear=50..85}] darkness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.83
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7مه غلیظ..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.54
particle minecraft:ash ~ ~ ~ 1 1 1 0.1 13
# End 27
