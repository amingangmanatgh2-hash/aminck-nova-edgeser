# Horror func 60 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.ghast.scream @a ~ ~ ~ 1 1.31
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.55
effect @a[distance=..8] weakness 5 0 true
execute at @a run summon minecraft:bat ~-1 ~14 ~-1 {CustomName:"§8Crow 60-5 by Moon",NoGravity:1b}
scoreboard players add @a novahorror.fear 1
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.71
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.63
# End func 60 - fear logic
