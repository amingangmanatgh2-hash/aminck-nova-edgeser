# Horror Bedrock func 26 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=24..39}] weakness 5 0 true
particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.3 0.04 7
titleraw @a[scores={novahorror.fear=74..}] title {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
effect @a[scores={novahorror.fear=83..}] nausea 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 0.9 0.58
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.6 0.89
effect @a[scores={novahorror.fear=53..75}] blindness 2 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.71
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.5 0.76
particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.1 12
execute as @a[scores={novahorror.fear=69..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=40..}] slowness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.87
tag @a[scores={novahorror.fear=90..}] add novahorror_enhanced_26
execute as @a[tag=novahorror_enhanced_26] at @s run titleraw @s actionbar {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
# End 26 enhanced 22 diverse
