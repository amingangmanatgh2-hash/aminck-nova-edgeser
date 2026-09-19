say §8[Nova Horror] §7Ravenshollow awakens... ترس آغاز شد.
scoreboard objectives add novahorror.fear dummy "§cترس"
scoreboard objectives add novahorror.dark_ticks dummy "تاریکی"
scoreboard objectives add novahorror.sanity dummy "سلامت روانی"
scoreboard objectives add novahorror.jumpscare_cooldown dummy
tellraw @a {"text":"به عمارت ریونزهالو خوش آمدی... دیگر راه برگشتی نیست.","color":"gray","italic":true}
tellraw @a {"text":"قطب‌نمای شکسته‌ات را بررسی کن. عمارت منتظر است.","color":"dark_gray"}
