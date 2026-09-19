# Horror Bedrock func 68 - mansion - truly diverse
effect @a[scores={novahorror.fear=23..46}] wither 4 0 true
particle minecraft:soul_fire_flame ~ ~1 ~ 0.4 0.5 0.5 0.09 5
titleraw @a[scores={novahorror.fear=74..}] title {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
effect @a[scores={novahorror.fear=80..}] nausea 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.roar @a ~ ~ ~ 0.8 0.77
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.9 0.30
effect @a[scores={novahorror.fear=61..70}] blindness 2 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.63
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7مه غلیظ..."}]}
playsound block.bell.hit @a ~ ~ ~ 0.5 0.71
particle minecraft:ash ~ ~ ~ 1 1 1 0.1 8
tag @a[scores={novahorror.fear=62..}] add novahorror_mansion
execute as @a[tag=novahorror_mansion] at @s run particle minecraft:basic_smoke ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 68 mansion
