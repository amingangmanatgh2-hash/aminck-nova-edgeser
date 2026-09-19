# Horror Bedrock func 59 - night - truly diverse
effect @a[scores={novahorror.fear=17..44}] wither 3 0 true
particle minecraft:basic_smoke ~ ~1 ~ 0.6 0.6 0.5 0.01 4
titleraw @a[scores={novahorror.fear=85..}] title {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=76..}] nausea 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound ambient.cave @a ~ ~ ~ 0.6 0.64
playsound mob.warden.roar @a ~ ~ ~ 0.7 0.74
effect @a[scores={novahorror.fear=63..78}] blindness 2 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.94
particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...باد نجوا می‌کند..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.9 0.59
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 15
tag @a[scores={novahorror.fear=71..}] add novahorror_night
execute as @a[tag=novahorror_night] at @s run particle minecraft:spore_blossom_air ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 59 night
