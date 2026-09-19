# Horror func 70 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
scoreboard players add @a novahorror.fear 1
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
scoreboard players add @a novahorror.fear 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute at @a run summon minecraft:bat ~1 ~5 ~7 {CustomName:"§8Crow 70-14 by Moon",NoGravity:1b}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.32
effect @a[distance=..8] weakness 5 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
# End func 70 - fear logic
