# Horror Bedrock func 76 - jumpscare - truly diverse
effect @a[scores={novahorror.fear=10..30}] weakness 5 0 true
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.6 0.4 0.3 0.08 3
titleraw @a[scores={novahorror.fear=77..}] title {"rawtext":[{"text":"§7...نمی‌تونی فرار کنی..."}]}
effect @a[scores={novahorror.fear=87..}] nausea 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.8 0.59
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.8 0.55
effect @a[scores={novahorror.fear=51..67}] wither 4 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.62
particle minecraft:white_ash ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4خون..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.7 0.79
particle minecraft:witch ~ ~ ~ 1 1 1 0.1 9
tag @a[scores={novahorror.fear=67..}] add novahorror_jumpscare
execute as @a[tag=novahorror_jumpscare] at @s run particle minecraft:sculk_soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 76 jumpscare
