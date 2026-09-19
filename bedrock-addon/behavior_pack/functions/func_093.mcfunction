# Horror func 93 - diverse real commands, coordinated with mod
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.ghast.scream @a ~ ~ ~ 1 0.65
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
# End func 93 - fear logic
