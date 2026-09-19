# Horror func 29 - diverse real commands, coordinated with mod
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.87
execute at @a run summon minecraft:bat ~1 ~13 ~4 {CustomName:"§8Crow 29-1 by Moon",NoGravity:1b}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound mob.ghast.scream @a ~ ~ ~ 1 0.36
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
scoreboard players add @a novahorror.fear 1
effect @a[distance=..8] weakness 5 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
# End func 29 - fear logic
