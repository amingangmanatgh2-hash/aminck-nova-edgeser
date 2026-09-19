# Setup command blocks with precise commands - coordinated with mod
setblock 34 66 28 minecraft:command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b, TrackOutput:0b} replace
setblock 34 67 28 minecraft:chain_command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b} replace
setblock -38 68 20 minecraft:command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b, TrackOutput:0b} replace
setblock -38 69 20 minecraft:chain_command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b} replace
setblock 14 75 20 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b, TrackOutput:0b} replace
setblock 14 76 20 minecraft:chain_command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b} replace
setblock 2 68 -24 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b, TrackOutput:0b} replace
setblock 2 69 -24 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b} replace
setblock 10 75 14 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b} replace
setblock 10 76 14 minecraft:chain_command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b} replace
setblock 0 74 8 minecraft:command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b, TrackOutput:0b} replace
setblock 0 75 8 minecraft:chain_command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b} replace
setblock -25 73 2 minecraft:command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b, TrackOutput:0b} replace
setblock -25 74 2 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b} replace
setblock 15 78 -4 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b} replace
setblock 15 79 -4 minecraft:chain_command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b} replace
setblock -27 85 19 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b, TrackOutput:0b} replace
setblock -27 86 19 minecraft:chain_command_block{Command:"gamerule doDaylightCycle false", auto:1b} replace
setblock 37 83 -27 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b, TrackOutput:0b} replace
setblock 37 84 -27 minecraft:chain_command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b} replace
setblock 39 70 -30 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b, TrackOutput:0b} replace
setblock 39 71 -30 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b} replace
setblock 21 79 28 minecraft:command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b, TrackOutput:0b} replace
setblock 21 80 28 minecraft:chain_command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b} replace
setblock 4 80 -16 minecraft:command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b, TrackOutput:0b} replace
setblock 4 81 -16 minecraft:chain_command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b} replace
setblock -29 79 -21 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b, TrackOutput:0b} replace
setblock -29 80 -21 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b} replace
setblock 27 67 -7 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b, TrackOutput:0b} replace
setblock 27 68 -7 minecraft:chain_command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b} replace
setblock 24 74 10 minecraft:command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b, TrackOutput:0b} replace
setblock 24 75 10 minecraft:chain_command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b} replace
setblock 2 69 -27 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b, TrackOutput:0b} replace
setblock 2 70 -27 minecraft:chain_command_block{Command:"gamerule doDaylightCycle false", auto:1b} replace
setblock -32 70 26 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b} replace
setblock -32 71 26 minecraft:chain_command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b} replace
setblock -5 73 -5 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock -5 74 -5 minecraft:chain_command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000", auto:1b} replace
setblock -1 75 21 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b, TrackOutput:0b} replace
setblock -1 76 21 minecraft:chain_command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000", auto:1b} replace
setblock 35 81 -30 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock 35 82 -30 minecraft:chain_command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b} replace
setblock 3 83 17 minecraft:command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b, TrackOutput:0b} replace
setblock 3 84 17 minecraft:chain_command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b} replace
setblock -30 68 7 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b, TrackOutput:0b} replace
setblock -30 69 7 minecraft:chain_command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000", auto:1b} replace
setblock 20 80 12 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b, TrackOutput:0b} replace
setblock 20 81 12 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b} replace
setblock 7 79 19 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b, TrackOutput:0b} replace
setblock 7 80 19 minecraft:chain_command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b} replace
setblock -4 72 2 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b, TrackOutput:0b} replace
setblock -4 73 2 minecraft:chain_command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b} replace
setblock 8 82 18 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock 8 83 18 minecraft:chain_command_block{Command:"time set midnight", auto:1b} replace
setblock -36 85 24 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b, TrackOutput:0b} replace
setblock -36 86 24 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock 26 84 6 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b, TrackOutput:0b} replace
setblock 26 85 6 minecraft:chain_command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b} replace
setblock 22 77 24 minecraft:command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b, TrackOutput:0b} replace
setblock 22 78 24 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock -11 68 24 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b, TrackOutput:0b} replace
setblock -11 69 24 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b} replace
setblock 12 66 -10 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock 12 67 -10 minecraft:chain_command_block{Command:"time set midnight", auto:1b} replace
setblock 12 69 -1 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b} replace
setblock 12 70 -1 minecraft:chain_command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b} replace
setblock 21 83 -13 minecraft:command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b, TrackOutput:0b} replace
setblock 21 84 -13 minecraft:chain_command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b} replace
setblock 20 82 -30 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b, TrackOutput:0b} replace
setblock 20 83 -30 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b} replace
setblock -24 84 0 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b, TrackOutput:0b} replace
setblock -24 85 0 minecraft:chain_command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000", auto:1b} replace
setblock 24 85 -8 minecraft:command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b, TrackOutput:0b} replace
setblock 24 86 -8 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b} replace
setblock 20 71 -29 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b} replace
setblock 20 72 -29 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b} replace
setblock -36 68 -27 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b, TrackOutput:0b} replace
setblock -36 69 -27 minecraft:chain_command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b} replace
setblock 19 71 10 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b, TrackOutput:0b} replace
setblock 19 72 10 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b} replace
setblock -10 71 -21 minecraft:command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b, TrackOutput:0b} replace
setblock -10 72 -21 minecraft:chain_command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b} replace
setblock -26 67 27 minecraft:command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000", auto:1b, TrackOutput:0b} replace
setblock -26 68 27 minecraft:chain_command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b} replace
setblock 26 68 22 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock 26 69 22 minecraft:chain_command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b} replace
setblock 25 84 23 minecraft:command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b, TrackOutput:0b} replace
setblock 25 85 23 minecraft:chain_command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b} replace
setblock 18 77 -4 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b, TrackOutput:0b} replace
setblock 18 78 -4 minecraft:chain_command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b} replace
setblock -40 71 4 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b, TrackOutput:0b} replace
setblock -40 72 4 minecraft:chain_command_block{Command:"time set midnight", auto:1b} replace
setblock 36 71 -25 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock 36 72 -25 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock 37 67 -29 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b, TrackOutput:0b} replace
setblock 37 68 -29 minecraft:chain_command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b} replace
setblock -24 75 0 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b, TrackOutput:0b} replace
setblock -24 76 0 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock -26 75 -18 minecraft:command_block{Command:"time set midnight", auto:1b, TrackOutput:0b} replace
setblock -26 76 -18 minecraft:chain_command_block{Command:"time set midnight", auto:1b} replace
setblock -24 78 -11 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b} replace
setblock -24 79 -11 minecraft:chain_command_block{Command:"gamerule doDaylightCycle false", auto:1b} replace
setblock 39 68 -18 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b, TrackOutput:0b} replace
setblock 39 69 -18 minecraft:chain_command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b} replace
setblock 20 72 -25 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b, TrackOutput:0b} replace
setblock 20 73 -25 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock -19 74 -26 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock -19 75 -26 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b} replace
setblock -2 73 -8 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock -2 74 -8 minecraft:chain_command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b} replace
setblock -10 82 -20 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b} replace
setblock -10 83 -20 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock -19 77 -25 minecraft:command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b, TrackOutput:0b} replace
setblock -19 78 -25 minecraft:chain_command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b} replace
setblock 26 71 11 minecraft:command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b, TrackOutput:0b} replace
setblock 26 72 11 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b} replace
setblock 12 72 4 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b, TrackOutput:0b} replace
setblock 12 73 4 minecraft:chain_command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b} replace
setblock 5 85 16 minecraft:command_block{Command:"time set midnight", auto:1b, TrackOutput:0b} replace
setblock 5 86 16 minecraft:chain_command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b} replace
setblock 35 66 -28 minecraft:command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b, TrackOutput:0b} replace
setblock 35 67 -28 minecraft:chain_command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b} replace
setblock -29 70 -7 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b} replace
setblock -29 71 -7 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock 38 71 -28 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b, TrackOutput:0b} replace
setblock 38 72 -28 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock 15 73 -9 minecraft:command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b, TrackOutput:0b} replace
setblock 15 74 -9 minecraft:chain_command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b} replace
setblock 29 75 14 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b, TrackOutput:0b} replace
setblock 29 76 14 minecraft:chain_command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b} replace
setblock -6 80 25 minecraft:command_block{Command:"time set midnight", auto:1b, TrackOutput:0b} replace
setblock -6 81 25 minecraft:chain_command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b} replace
setblock 34 84 2 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b, TrackOutput:0b} replace
setblock 34 85 2 minecraft:chain_command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b} replace
setblock -32 67 -1 minecraft:command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000", auto:1b, TrackOutput:0b} replace
setblock -32 68 -1 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock 32 84 -8 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock 32 85 -8 minecraft:chain_command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b} replace
setblock 37 68 11 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b, TrackOutput:0b} replace
setblock 37 69 11 minecraft:chain_command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b} replace
setblock 26 69 -9 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock 26 70 -9 minecraft:chain_command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b} replace
setblock 5 70 22 minecraft:command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000", auto:1b, TrackOutput:0b} replace
setblock 5 71 22 minecraft:chain_command_block{Command:"gamerule doDaylightCycle false", auto:1b} replace
setblock -8 85 -20 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b, TrackOutput:0b} replace
setblock -8 86 -20 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock -38 66 -13 minecraft:command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000", auto:1b, TrackOutput:0b} replace
setblock -38 67 -13 minecraft:chain_command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b} replace
setblock -40 73 -17 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b, TrackOutput:0b} replace
setblock -40 74 -17 minecraft:chain_command_block{Command:"time set midnight", auto:1b} replace
setblock -17 66 13 minecraft:command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b, TrackOutput:0b} replace
setblock -17 67 13 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock 16 67 -5 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b, TrackOutput:0b} replace
setblock 16 68 -5 minecraft:chain_command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b} replace
setblock 16 73 3 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b, TrackOutput:0b} replace
setblock 16 74 3 minecraft:chain_command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b} replace
setblock -27 82 28 minecraft:command_block{Command:"time set midnight", auto:1b, TrackOutput:0b} replace
setblock -27 83 28 minecraft:chain_command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b} replace
setblock 7 76 10 minecraft:command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b, TrackOutput:0b} replace
setblock 7 77 10 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock -28 73 -20 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b, TrackOutput:0b} replace
setblock -28 74 -20 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b} replace
setblock 22 78 -17 minecraft:command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b, TrackOutput:0b} replace
setblock 22 79 -17 minecraft:chain_command_block{Command:"time set midnight", auto:1b} replace
setblock 5 78 20 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b, TrackOutput:0b} replace
setblock 5 79 20 minecraft:chain_command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b} replace
setblock -9 84 -17 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b, TrackOutput:0b} replace
setblock -9 85 -17 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock -23 73 25 minecraft:command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b, TrackOutput:0b} replace
setblock -23 74 25 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b} replace
setblock 11 75 10 minecraft:command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b, TrackOutput:0b} replace
setblock 11 76 10 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b} replace
setblock 25 81 -5 minecraft:command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b, TrackOutput:0b} replace
setblock 25 82 -5 minecraft:chain_command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b} replace
setblock 23 77 -29 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b} replace
setblock 23 78 -29 minecraft:chain_command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b} replace
setblock -14 72 0 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b} replace
setblock -14 73 0 minecraft:chain_command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b} replace
setblock -37 81 27 minecraft:command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b, TrackOutput:0b} replace
setblock -37 82 27 minecraft:chain_command_block{Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b} replace
setblock 2 71 -13 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b, TrackOutput:0b} replace
setblock 2 72 -13 minecraft:chain_command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b} replace
setblock 18 71 30 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b, TrackOutput:0b} replace
setblock 18 72 30 minecraft:chain_command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b} replace
setblock -37 82 7 minecraft:command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b, TrackOutput:0b} replace
setblock -37 83 7 minecraft:chain_command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b} replace
setblock -22 85 -5 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b, TrackOutput:0b} replace
setblock -22 86 -5 minecraft:chain_command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b} replace
setblock 10 79 -27 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b, TrackOutput:0b} replace
setblock 10 80 -27 minecraft:chain_command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b} replace
setblock 21 71 -1 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b} replace
setblock 21 72 -1 minecraft:chain_command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b} replace
setblock 11 73 4 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b, TrackOutput:0b} replace
setblock 11 74 4 minecraft:chain_command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b} replace
setblock -11 76 21 minecraft:command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b, TrackOutput:0b} replace
setblock -11 77 21 minecraft:chain_command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b} replace
setblock 19 82 20 minecraft:command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b, TrackOutput:0b} replace
setblock 19 83 20 minecraft:chain_command_block{Command:"time set midnight", auto:1b} replace
setblock 1 66 20 minecraft:command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b, TrackOutput:0b} replace
setblock 1 67 20 minecraft:chain_command_block{Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b} replace
