# نصب Bedrock - نسخه ۲.۰

## دانلود
Download ZIP از گیت‌هاب

## مپ
- مسیر: `bedrock-map/world/`
- شامل level.dat Bedrock + db/ با LevelDB log
- برای نصب: پوشه world رو زیپ کن و پسوند رو به .mcworld تغییر بده و دوبار کلیک کن
- یا مستقیم پوشه world رو بذار تو `games/com.mojang/minecraftWorlds/`

## ادان - خیلی مهم چون جداست
- مسیر: `bedrock-addon/behavior_pack` و `resource_pack`
- هرکدوم رو جدا زیپ کن به .mcaddon و دوبار کلیک کن
- سپس Edit World > Behavior Packs > Nova Horror BP > Activate
- Edit World > Resource Packs > Nova Horror RP > Activate
- Experiments رو روشن کن

## شیدر
- مسیر: `bedrock-shader/`
- زیپ کن به .mcpack و دوبار کلیک
- Edit World > Resource Packs > Shader > Activate (بالاتر از RP ادان)

## ساند افکت شب
داخل `behavior_pack/functions/` و `java-map/.../events/night_crows.mcfunction` صدای کلاغ کنار ماه با summon bat و playsound parrot.imitate.ghast و particle ash

## دستورات
/give @s novahorror:item_00
/scoreboard objectives setdisplay sidebar novahorror.fear
