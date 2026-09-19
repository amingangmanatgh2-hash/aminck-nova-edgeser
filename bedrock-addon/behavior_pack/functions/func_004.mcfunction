# Horror Bedrock func 4 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=11..31}] wither 5 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.7 0.3 0.09 3
titleraw @a[scores={novahorror.fear=75..}] title {"rawtext":[{"text":"§8سایه..."}]}
effect @a[scores={novahorror.fear=77..}] darkness 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 0.9 0.42
playsound mob.warden.heartbeat @a ~ ~ ~ 0.6 0.92
effect @a[scores={novahorror.fear=57..84}] slowness 4 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.85
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.53
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 9
execute as @a[scores={novahorror.fear=60..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=24..}] slowness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.55
tag @a[scores={novahorror.fear=75..}] add novahorror_enhanced_4
execute as @a[tag=novahorror_enhanced_4] at @s run titleraw @s actionbar {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
# End 4 enhanced 22 diverse
