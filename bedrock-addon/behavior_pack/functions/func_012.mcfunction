# Horror func 12 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute at @a run summon minecraft:bat ~4 ~15 ~6 {CustomName:"§8Crow 12-1 by Moon",NoGravity:1b}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[distance=..8] weakness 5 0 true
scoreboard players add @a novahorror.fear 1
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.40
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
# End func 12 - fear logic
