# راهنمای نصب نسخه Java Edition

## فایل‌ها
برای Java شما ۴ فایل جدا دارید:
1. `NovaHorror_Java_Map.zip` - مپ ترسناک (world save تمیز)
2. `novahorror-forge-1.20.1-1.0.0.jar` - مود Forge (موجودات، ترس، آیتم‌ها)
3. `NovaHorror_Java_Shader.zip` - شیدر God-tier (Iris/OptiFine)
4. لیست آیتم‌ها در `ITEMS.md`

همه standalone هستند.

---

## پیش‌نیازها
- Minecraft Java 1.20.1
- Forge 47.1.0 (برای 1.20.1)
- (اختیاری) Iris + Sodium یا OptiFine برای شیدر

### نصب Forge
1. از https://files.minecraftforge.net/ نسخه 1.20.1 - 47.1.0 را دانلود کنید.
2. Installer را اجرا کنید، `Install client` را بزنید.
3. لانچر Minecraft را باز کنید، پروفایل Forge 1.20.1 را انتخاب کنید.

---

## مرحله ۱: نصب مپ

1. کلید `Win + R` بزنید، بنویسید `%appdata%\.minecraft` و Enter.
2. پوشه `saves` را باز کنید.
3. فایل `NovaHorror_Java_Map.zip` را اینجا **Extract** کنید (آنزیپ). باید پوشه‌ای به نام `world` یا `Nova Horror - Ravenshollow` ساخته شود که داخلش `level.dat` و `region` باشد.
4. اگر نام پوشه `world` است، آن را به `NovaHorror` تغییر دهید تا با بقیه قاطی نشود.
5. Minecraft را با پروفایل Forge اجرا کنید، در Singleplayer مپ را می‌بینید.

> مپ تمیز است و هیچ مودی داخلش نیست، پس حتی بدون مود هم لود می‌شود (فقط ساختمان‌ها).

---

## مرحله ۲: نصب مود Forge (.jar)

مود شامل:
- ۴ موجود ترسناک با AI خاص (Shade, Crawler, Weeper, Forgotten)
- سیستم ترس/سلامت روانی
- جامپ‌اسکر، تاریکی ناگهانی، صدای قدم
- ۲۰ آیتم با لور

### نصب
1. به `%appdata%\.minecraft\mods` بروید (اگر پوشه mods نیست، بسازید).
2. فایل `novahorror-forge-1.20.1-1.0.0.jar` را داخل `mods` کپی کنید.
3. Minecraft Forge را اجرا کنید.

### تست
- وارد مپ شوید، باید پیام "به ریونزهالو خوش آمدی..." ببینید.
- دستور `/give @p novahorror:rusted_mansion_key` را بزنید. اگر آیتم را داد، مود فعال است.
- اگر مود لود نشد، لاگ را چک کنید: `logs/latest.log` باید خط `[NovaHorror] Horror mod initialized` داشته باشد.

### ساخت مود از سورس (اختیاری، چون JDK ندارید)
اگر می‌خواهید مود را خودتان بیلد کنید:
```bash
cd java-mod
./gradlew build
```
فایل jar در `build/libs/` ساخته می‌شود. نیاز به JDK 17 دارد.

---

## مرحله ۳: نصب شیدر Java (God-tier)

شیدر مخصوص فضای ترسناک:
- نور کم، سایه‌های بلند متحرک
- مه غلیظ حجمی (volumetric fog)
- رنگ سرد خاکستری/آبی، قرمز خونین در لحظات خطر
- ذرات گرد و غبار، نور شمع واقع‌گرایانه

### با Iris (پیشنهادی، بهتر و سریع‌تر)
1. مودهای `Iris` و `Sodium` را برای 1.20.1 دانلود و در `mods` بریزید (از modrinth.com).
2. پوشه `shaderpacks` در `.minecraft` بسازید اگر نیست.
3. فایل `NovaHorror_Java_Shader.zip` را **بدون آنزیپ** داخل `shaderpacks` کپی کنید.
4. Minecraft را اجرا کنید، به `Options > Video Settings > Shader Packs` بروید.
5. شیدر `NovaHorror_Java_Shader` را انتخاب و `Apply` بزنید.

### با OptiFine
1. OptiFine HD U I5 برای 1.20.1 را نصب کنید (پروفایل جدا می‌سازد).
2. فایل zip شیدر را در `shaderpacks` بریزید.
3. `Options > Video Settings > Shaders` > انتخاب شیدر.

### تنظیمات پیشنهادی شیدر
- `shadowMapResolution: 2048`
- `shadowDistance: 120`
- `volumetricFog: true`
- `HORROR_MODE: 1`
- برای FPS بهتر: `shadowMapResolution` را 1024 کنید.

---

## ترکیب نهایی
برای تجربه کامل:
1. مپ را در saves بریزید
2. مود را در mods بریزید
3. شیدر را در shaderpacks بریزید و فعال کنید
4. بازی را روی `Hard` و `Moody` brightness (حداقل) بگذارید
5. هدفون بزنید، شب بازی کنید!

## دستورات مفید
- `/give @p novahorror:spirit_lantern`
- `/give @p novahorror:heart_of_dread`
- `/scoreboard objectives setdisplay sidebar novahorror.fear`
- `/time set midnight`
- `/gamerule doDaylightCycle false`
- `/effect give @p novahorror:fear 10 2`

## عیب‌یابی
- اگر مپ سیاه است: شیدر را خاموش کنید، مود را چک کنید
- اگر موجودات اسپاون نمی‌شوند: `/gamerule doMobSpawning true`
- اگر لگ دارید: شیدر را روی Low بگذارید، `render distance` را 8 کنید

Enjoy... if you dare.
