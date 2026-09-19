# Nova Horror Bedrock - tick
scoreboard objectives add novahorror.fear dummy "ترس"
scoreboard objectives add novahorror.dark dummy "تاریکی"
# Fear increase in dark
execute @a ~ ~ ~ detect ~ ~-1 ~ air 0 scoreboard players add @s novahorror.dark 1
execute @a[scores={novahorror.dark=80..}] ~ ~ ~ scoreboard players add @s novahorror.fear 1
execute @a[scores={novahorror.dark=80..}] ~ ~ ~ scoreboard players set @s novahorror.dark 0
# Effects
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
# Jumpscare
execute @a[scores={novahorror.fear=70..}] ~ ~ ~ function novahorror:jumpscare
# Spirit lantern
execute @a[hasitem={item=novahorror:spirit_lantern,location=slot.weapon.mainhand}] ~ ~ ~ particle minecraft:soul_particle ~ ~1 ~ 
# Heart
execute @a[hasitem={item=novahorror:heart_of_dread}] ~ ~ ~ effect @s darkness 2 0 true
# Compass
execute @a[hasitem={item=novahorror:broken_compass,location=slot.weapon.mainhand}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§7فاصله تا عمارت: عمارت در 0,0 است"}]}
