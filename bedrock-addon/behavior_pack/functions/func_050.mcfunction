# Horror Bedrock func 50 - mansion - truly diverse
effect @a[scores={novahorror.fear=23..37}] nausea 4 0 true
particle minecraft:soul_fire_flame ~ ~1 ~ 0.7 0.6 0.7 0.04 3
titleraw @a[scores={novahorror.fear=73..}] title {"rawtext":[{"text":"§cکمک..."}]}
effect @a[scores={novahorror.fear=84..}] darkness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 0.9 0.59
playsound ambient.cave @a ~ ~ ~ 0.5 0.40
effect @a[scores={novahorror.fear=52..69}] slowness 3 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.92
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4او می‌بینه..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.78
particle minecraft:basic_smoke ~ ~ ~ 1 1 1 0.1 13
tag @a[scores={novahorror.fear=63..}] add novahorror_mansion
execute as @a[tag=novahorror_mansion] at @s run particle minecraft:campfire_cosy_smoke ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 50 mansion
