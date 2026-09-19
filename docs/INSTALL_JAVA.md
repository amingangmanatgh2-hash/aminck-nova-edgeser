# نصب Java - نسخه ۲.۰ حجم بالا

## دانلود
1. این ریپو رو از گیت‌هاب Download ZIP بزن
2. استخراج کن

## مپ با کامندبلاک
- مسیر: `java-map/world/`
- شامل: level.dat, region/*.mca (۸ مگ), datapacks/novahorror/ (۲۰۰ فانکشن)
- کامندبلاک‌ها داخل عمارت با دستورات دقیق مثل `execute as @a at @s run function novahorror:horror_000` و `playsound warden.heartbeat`
- نصب: پوشه world رو کپی کن به `%appdata%/.minecraft/saves/NovaHorror/world/` - یعنی داخل saves یه پوشه NovaHorror بساز و محتویات world رو بریز داخلش

## مود ۳۰ هزار خط
- مسیر: `java-mod/`
- ۶۱ فایل جاوا، هرکدام ۵۰۰-۶۰۰ خط کد واقعی ترس
- بیلد: `cd java-mod && ./gradlew build` (JDK 17 لازم داره)
- jar می‌ره تو `build/libs/` - بریز تو `mods/`
- اگر نمی‌خوای بیلد کنی، سورس رو مستقیم بخون - کدها واقعین

## شیدر God-tier
- مسیر: `java-shader/shaders/` - ۱۰ فایل هرکدام ۵۰۰ خط GLSL
- نصب: یه پوشه `NovaHorror_Java_Shader` بساز تو `shaderpacks/` و محتویات `java-shader/` رو بریز داخلش
- Iris + Sodium نصب کن

## اجرا
Forge 1.20.1 رو اجرا کن، مپ NovaHorror رو انتخاب کن، brightness رو Moody بذار، هدفون بزن، شب بازی کن
