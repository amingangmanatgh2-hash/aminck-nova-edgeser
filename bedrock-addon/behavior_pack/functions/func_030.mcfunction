# Horror Bedrock func 30 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=15..41}] nausea 3 0 true
particle minecraft:white_ash ~ ~1 ~ 0.3 0.3 0.3 0.08 3
titleraw @a[scores={novahorror.fear=81..}] title {"rawtext":[{"text":"§4فرار کن!"}]}
effect @a[scores={novahorror.fear=86..}] weakness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 0.8 0.34
playsound block.bell.hit @a ~ ~ ~ 0.7 1.00
effect @a[scores={novahorror.fear=65..82}] slowness 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.93
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.9 0.66
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 12
# End 30
