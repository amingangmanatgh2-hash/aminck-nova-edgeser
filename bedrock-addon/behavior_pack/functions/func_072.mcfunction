# Horror Bedrock func 72 - mansion - truly diverse
effect @a[scores={novahorror.fear=20..50}] slowness 2 0 true
particle minecraft:basic_smoke ~ ~1 ~ 0.4 0.2 0.8 0.08 8
titleraw @a[scores={novahorror.fear=84..}] title {"rawtext":[{"text":"§7مه غلیظ..."}]}
effect @a[scores={novahorror.fear=75..}] wither 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 1.0 0.36
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.8 0.49
effect @a[scores={novahorror.fear=60..67}] weakness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.85
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8...الارا منتظره..."}]}
playsound block.bell.hit @a ~ ~ ~ 0.6 0.57
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.1 8
tag @a[scores={novahorror.fear=80..}] add novahorror_mansion
execute as @a[tag=novahorror_mansion] at @s run particle minecraft:soul_fire_flame ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 72 mansion
