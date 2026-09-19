# Horror Bedrock func 53 - rain - truly diverse
effect @a[scores={novahorror.fear=22..37}] blindness 2 0 true
particle minecraft:white_ash ~ ~1 ~ 0.5 0.3 0.2 0.07 6
titleraw @a[scores={novahorror.fear=74..}] title {"rawtext":[{"text":"§8...الارا منتظره..."}]}
effect @a[scores={novahorror.fear=89..}] darkness 2 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.33
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.5 0.97
effect @a[scores={novahorror.fear=62..70}] wither 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.73
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.6 0.74
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.1 8
tag @a[scores={novahorror.fear=64..}] add novahorror_rain
execute as @a[tag=novahorror_rain] at @s run particle minecraft:sculk_soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 53 rain
