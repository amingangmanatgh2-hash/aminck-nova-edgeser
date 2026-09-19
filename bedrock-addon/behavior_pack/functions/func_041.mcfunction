# Horror Bedrock func 41 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=12..34}] wither 2 0 true
particle minecraft:white_ash ~ ~1 ~ 0.3 0.5 0.2 0.08 8
titleraw @a[scores={novahorror.fear=85..}] title {"rawtext":[{"text":"§8سایه..."}]}
effect @a[scores={novahorror.fear=75..}] darkness 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.roar @a ~ ~ ~ 0.6 0.56
playsound ambient.cave @a ~ ~ ~ 0.6 0.98
effect @a[scores={novahorror.fear=50..82}] blindness 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.77
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.9 0.61
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.1 8
# End 41
