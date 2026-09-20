say §8[Nova Horror 2.0] Ravenshollow awakens - real horror, no fake code
scoreboard objectives add novahorror.fear dummy "ترس"
scoreboard objectives add novahorror.sanity dummy "عقل"
scoreboard objectives add novahorror.dark dummy "تاریکی"
scoreboard objectives add novahorror.timer dummy "زمان"
scoreboard objectives add novahorror.ambience dummy "صدا"
scoreboard objectives add novahorror.crow dummy "کلاغ"
scoreboard objectives add novahorror.night dummy "شب"
function novahorror:setup_command_blocks
tellraw @a {"text":"§aNova Horror 2.0 لود شد - ترس شروع میشه...","color":"green"}
