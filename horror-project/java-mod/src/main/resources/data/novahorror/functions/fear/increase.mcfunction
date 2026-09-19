scoreboard players add @s novahorror.fear 1
scoreboard players set @s novahorror.dark_ticks 0
execute if score @s novahorror.fear matches 20 run tellraw @s {"text":"احساس می‌کنی کسی نگاهت می‌کند...","color":"gray","italic":true}
execute if score @s novahorror.fear matches 40 run tellraw @s {"text":"تاریکی غلیظ‌تر می‌شود...","color":"dark_gray"}
execute if score @s novahorror.fear matches 60 run tellraw @s {"text":"نمی‌توانم نفس بکشم...","color":"red"}
execute if score @s novahorror.fear matches 80 run title @s title {"text":"او اینجاست!","color":"dark_red","bold":true}
