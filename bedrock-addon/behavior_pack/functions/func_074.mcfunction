# Horror func 74 - diverse real commands, coordinated with mod
scoreboard players add @a novahorror.fear 1
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
scoreboard players add @a[distance=..5] novahorror.dark 1
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[distance=..8] weakness 5 0 true
execute at @a run summon minecraft:bat ~8 ~8 ~6 {CustomName:"§8Crow 74-8 by Moon",NoGravity:1b}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
scoreboard players add @a[distance=..5] novahorror.dark 1
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
# End func 74 - fear logic
