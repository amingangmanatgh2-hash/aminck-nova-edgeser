# Horror Bedrock func 7 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=13..39}] slowness 4 0 true
particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.4 0.6 0.09 4
titleraw @a[scores={novahorror.fear=76..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=88..}] darkness 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.9 0.75
playsound mob.wolf.howl @a ~ ~ ~ 0.8 0.51
effect @a[scores={novahorror.fear=50..75}] blindness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.77
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7صدای پا..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.7 0.67
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 13
# End 7
