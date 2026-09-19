# Horror Bedrock func 39 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=25..31}] nausea 4 0 true
particle minecraft:spore_blossom_air ~ ~1 ~ 0.8 0.6 0.7 0.06 8
titleraw @a[scores={novahorror.fear=83..}] title {"rawtext":[{"text":"§4او می‌بینه..."}]}
effect @a[scores={novahorror.fear=88..}] slowness 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.8 0.68
playsound mob.warden.roar @a ~ ~ ~ 0.7 0.89
effect @a[scores={novahorror.fear=59..88}] wither 2 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.97
particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7صدای پا..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.45
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.1 8
# End 39
