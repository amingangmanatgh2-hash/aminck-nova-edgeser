# Horror func 59 - diverse real commands, coordinated with mod
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~1 ~15 ~-6 {CustomName:"§8Crow 59-3 by Moon",NoGravity:1b}
effect @a[distance=..8] weakness 5 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
execute at @a run summon minecraft:bat ~8 ~13 ~-8 {CustomName:"§8Crow 59-6 by Moon",NoGravity:1b}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute at @a run summon minecraft:bat ~4 ~13 ~-3 {CustomName:"§8Crow 59-9 by Moon",NoGravity:1b}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.27
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.82
scoreboard players add @a novahorror.fear 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
# End func 59 - fear logic
