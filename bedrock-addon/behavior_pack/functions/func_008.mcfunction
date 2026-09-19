# Horror Bedrock func 8 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=15..46}] weakness 5 0 true
particle minecraft:basic_smoke ~ ~1 ~ 0.2 0.3 0.7 0.08 4
titleraw @a[scores={novahorror.fear=84..}] title {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=85..}] blindness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.roar @a ~ ~ ~ 0.9 0.57
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.82
effect @a[scores={novahorror.fear=65..80}] nausea 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.94
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cکمک..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.50
particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.1 12
# End 8
