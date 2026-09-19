# Horror func 26 - diverse real commands, coordinated with mod
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound mob.ghast.scream @a ~ ~ ~ 1 0.71
effect @a[distance=..8] weakness 5 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
effect @a[distance=..8] weakness 5 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.99
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[distance=..8] weakness 5 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
# End func 26 - fear logic
