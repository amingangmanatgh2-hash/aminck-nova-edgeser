# Horror Bedrock func 56 - rain - truly diverse
effect @a[scores={novahorror.fear=11..36}] darkness 5 0 true
particle minecraft:sculk_soul ~ ~1 ~ 0.6 0.7 0.3 0.04 4
titleraw @a[scores={novahorror.fear=78..}] title {"rawtext":[{"text":"§7...نمی‌تونی فرار کنی..."}]}
effect @a[scores={novahorror.fear=87..}] blindness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 0.7 0.80
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.87
effect @a[scores={novahorror.fear=54..76}] wither 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.71
particle minecraft:basic_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4فرار کن!"}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.6 0.41
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 13
tag @a[scores={novahorror.fear=64..}] add novahorror_rain
execute as @a[tag=novahorror_rain] at @s run particle minecraft:witch ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 56 rain
