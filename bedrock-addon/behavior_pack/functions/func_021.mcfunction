# Horror Bedrock func 21 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=21..34}] slowness 2 0 true
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.6 0.5 0.4 0.02 6
titleraw @a[scores={novahorror.fear=81..}] title {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=88..}] weakness 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 1.0 0.60
playsound ambient.cave @a ~ ~ ~ 0.7 0.70
effect @a[scores={novahorror.fear=56..70}] darkness 4 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.69
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7صدای پا..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.8 0.55
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 9
# End 21
