# Horror func 79 - diverse real commands, coordinated with mod
playsound mob.ghast.scream @a ~ ~ ~ 1 1.18
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound mob.ghast.scream @a ~ ~ ~ 1 0.81
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.00
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.48
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound mob.ghast.scream @a ~ ~ ~ 1 0.78
playsound mob.ghast.scream @a ~ ~ ~ 1 1.27
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
# End func 79 - fear logic
