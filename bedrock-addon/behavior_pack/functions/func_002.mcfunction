# Horror Bedrock func 2 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=15..47}] blindness 2 0 true
particle minecraft:spore_blossom_air ~ ~1 ~ 0.6 0.5 0.3 0.06 5
titleraw @a[scores={novahorror.fear=77..}] title {"rawtext":[{"text":"§4او می‌بینه..."}]}
effect @a[scores={novahorror.fear=76..}] nausea 2 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 0.6 0.54
playsound mob.warden.roar @a ~ ~ ~ 0.5 0.83
effect @a[scores={novahorror.fear=54..70}] weakness 4 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.98
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.64
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 8
# End 2
