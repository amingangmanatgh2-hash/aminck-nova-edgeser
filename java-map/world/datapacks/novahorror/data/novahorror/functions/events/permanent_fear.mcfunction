# Permanent fear progression - central mechanic - fear is permanent, only specific items reduce
# Fear increases over time at night and in dark and basement
execute as @a at @s if predicate novahorror:is_night run scoreboard players add @s novahorror.fear 1
execute as @a at @s if predicate novahorror:is_in_dark run scoreboard players add @s novahorror.fear 1
execute as @a at @s if predicate novahorror:is_in_basement run scoreboard players add @s novahorror.fear 1
execute as @a at @s if predicate novahorror:is_in_mansion run scoreboard players add @s novahorror.fear 1
# Sanity decreases when fear high
execute as @a[scores={novahorror.fear=50..}] at @s run scoreboard players remove @s[scores={novahorror.sanity=1..}] novahorror.sanity 1
execute as @a[scores={novahorror.fear=70..}] at @s run scoreboard players remove @s[scores={novahorror.sanity=1..}] novahorror.sanity 2
# Fear does NOT decrease naturally except when sanity high and fear low
execute as @a[scores={novahorror.fear=1..29,novahorror.sanity=80..}] at @s run scoreboard players remove @s novahorror.fear 1
# Only specific items reduce fear - HolyWater, HerbBundle, etc handled in item use, but also check for holding
execute as @a[nbt={SelectedItem:{id:"minecraft:torch"}}] at @s run scoreboard players remove @s[scores={novahorror.fear=1..}] novahorror.fear 1
# Fear milestones give effects and titles
execute as @a[scores={novahorror.fear=25}] at @s run title @s subtitle {"text":"§7...هوا سنگین شد...","color":"gray"}
execute as @a[scores={novahorror.fear=50}] at @s run title @s subtitle {"text":"§8...قلبم تند میزنه...","color":"red"}
execute as @a[scores={novahorror.fear=75}] at @s run title @s title {"text":"§4§lاو نزدیکته!","color":"dark_red"}
execute as @a[scores={novahorror.fear=90}] at @s run title @s title {"text":"§4§lاو اینجاست!","color":"dark_red"}
execute as @a[scores={novahorror.fear=37..}] at @s run particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.4 0.02 3
execute as @a[scores={novahorror.fear=12..}] at @s run particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.4 0.02 3
execute as @a[scores={novahorror.fear=41..}] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.4 0.4 0.4 0.02 3
execute as @a[scores={novahorror.fear=77..}] at @s run particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.4 0.02 3
execute as @a[scores={novahorror.fear=71..}] at @s run particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0.02 3
execute as @a[scores={novahorror.fear=74..}] at @s run particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0.02 3
execute as @a[scores={novahorror.fear=18..}] at @s run particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0.02 3
execute as @a[scores={novahorror.fear=71..}] at @s run particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0.02 3
execute as @a[scores={novahorror.fear=11..}] at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.4 0.4 0.4 0.02 3
execute as @a[scores={novahorror.fear=44..}] at @s run particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.4 0.02 3
