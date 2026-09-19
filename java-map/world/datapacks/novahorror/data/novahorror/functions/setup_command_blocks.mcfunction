# Setup command blocks - real diverse - coordinated with mod - no duplicate
# Mansion entrance 0,70,0
setblock 0 70 0 minecraft:iron_door[half=lower] replace
setblock 0 71 0 minecraft:iron_door[half=upper] replace
# Command blocks for horror triggers - each unique location and command
setblock 39 80 20 minecraft:command_block{Command:"execute as @a[distance=..5] at @s run function novahorror:horror_000",auto:1b} replace
setblock -39 67 22 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5",auto:1b} replace
setblock -10 66 25 minecraft:command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}",auto:1b} replace
setblock 25 72 12 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}",auto:1b} replace
setblock 28 70 -9 minecraft:command_block{Command:"effect give @a minecraft:darkness 5 0 true",auto:1b} replace
setblock -19 74 14 minecraft:command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"",auto:1b} replace
setblock 36 79 8 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/night_crows",auto:1b} replace
setblock -38 66 24 minecraft:command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3",auto:1b} replace
setblock -22 66 27 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}",auto:1b} replace
setblock -3 78 14 minecraft:command_block{Command:"# FPS FIX: gamerule set once at load
# gamerule doDaylightCycle false",auto:1b} replace
setblock 13 71 -3 minecraft:command_block{Command:"time set midnight",auto:1b} replace
setblock -12 72 13 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001",auto:1b} replace
setblock 20 74 13 minecraft:command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20",auto:1b} replace
setblock -3 72 15 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6",auto:1b} replace
setblock 32 78 -3 minecraft:command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}",auto:1b} replace
setblock 5 45 5 minecraft:command_block{Command:"execute as @a[y=..50] at @s run function novahorror:events/location_events",auto:1b} replace
setblock 8 45 8 minecraft:command_block{Command:"effect give @a[y=..50] minecraft:slowness 2 0 true",auto:1b} replace
setblock 10 44 10 minecraft:command_block{Command:"playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.8 0.4",auto:1b} replace
setblock 3 46 7 minecraft:command_block{Command:"particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 10",auto:1b} replace
setblock 6 45 -2 minecraft:command_block{Command:"execute as @a[y=..50] at @s run function novahorror:horror_100",auto:1b} replace
setblock 0 85 0 minecraft:command_block{Command:"execute as @a[y=80..] at @s run function novahorror:horror_101",auto:1b} replace
setblock 2 86 2 minecraft:command_block{Command:"particle minecraft:white_ash ~ ~1 ~ 1 1 1 0.01 20",auto:1b} replace
setblock -2 85 3 minecraft:command_block{Command:"playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.7 0.5",auto:1b} replace
setblock 100 64 100 minecraft:command_block{Command:"execute as @a[x=90..110,z=90..110] at @s run function novahorror:horror_102",auto:1b} replace
setblock 105 65 105 minecraft:command_block{Command:"playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.9 0.6",auto:1b} replace
setblock -50 64 -50 minecraft:command_block{Command:"execute as @a[x=-60..-40,z=-60..-40] at @s run function novahorror:horror_103",auto:1b} replace
setblock -48 65 -48 minecraft:command_block{Command:"title @a subtitle {\"text\":\"روستای متروکه...\",\"color\":\"gray\"}",auto:1b} replace
setblock 20 60 20 minecraft:command_block{Command:"setblock ~ ~ ~ minecraft:cobweb replace",auto:1b} replace
setblock 22 60 22 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/whispers",auto:1b} replace
setblock 24 60 24 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/jumpscare",auto:1b} replace
setblock 0 70 10 minecraft:command_block{Command:"execute as @a[scores={novahorror.fear=60..}] at @s run function novahorror:events/player_state",auto:1b} replace
setblock 0 70 -10 minecraft:command_block{Command:"execute if predicate novahorror:is_night run function novahorror:events/time_events",auto:1b} replace
setblock 10 70 0 minecraft:command_block{Command:"execute as @a at @s run function novahorror:horror_104",auto:1b} replace
setblock -10 70 0 minecraft:command_block{Command:"execute as @a at @s run function novahorror:horror_105",auto:1b} replace
setblock 0 75 0 minecraft:command_block{Command:"scoreboard objectives add novahorror.sanity dummy \"عقل\"",auto:1b} replace
setblock 1 75 0 minecraft:command_block{Command:"scoreboard objectives add novahorror.dark dummy \"تاریکی\"",auto:1b} replace
setblock 2 75 0 minecraft:command_block{Command:"scoreboard objectives add novahorror.timer dummy \"زمان\"",auto:1b} replace
setblock 3 75 0 minecraft:command_block{Command:"scoreboard objectives add novahorror.ambience dummy \"صدا\"",auto:1b} replace
setblock 4 75 0 minecraft:command_block{Command:"scoreboard objectives add novahorror.crow dummy \"کلاغ\"",auto:1b} replace
