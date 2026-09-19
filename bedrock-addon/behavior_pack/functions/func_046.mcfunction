# Horror Bedrock func 46 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=19..31}] darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.2 0.4 0.3 0.03 8
titleraw @a[scores={novahorror.fear=77..}] title {"rawtext":[{"text":"§4او می‌بینه..."}]}
effect @a[scores={novahorror.fear=80..}] nausea 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.51
playsound block.bell.hit @a ~ ~ ~ 0.7 0.86
effect @a[scores={novahorror.fear=55..71}] wither 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.77
particle minecraft:white_ash ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8سایه..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.58
particle minecraft:witch ~ ~ ~ 1 1 1 0.1 11
# End 46
