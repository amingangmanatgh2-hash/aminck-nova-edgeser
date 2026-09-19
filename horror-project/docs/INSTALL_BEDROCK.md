# راهنمای نصب نسخه Bedrock (موبایل / ویندوز)

## فایل‌ها
شما ۴ فایل جدا برای Bedrock دارید:
1. `NovaHorror_Bedrock_Map.mcworld` - مپ ترسناک (تمیز، بدون ادان)
2. `NovaHorror_Bedrock_Addon.mcaddon` - ادان ترسناک (Behavior + Resource)
3. `NovaHorror_Bedrock_Shader.mcpack` - شیدر God-tier
4. لیست آیتم‌ها در `ITEMS.md` (داخل ادان)

همه فایل‌ها standalone هستند و می‌توانند جدا نصب شوند، اما برای تجربه کامل باید هر سه را با هم استفاده کنید.

---

## مرحله ۱: نصب مپ (.mcworld)

### ویندوز ۱۰/۱۱ (Minecraft Bedrock)
1. فایل `NovaHorror_Bedrock_Map.mcworld` را دانلود کنید.
2. روی فایل دوبار کلیک کنید. Minecraft به صورت خودکار باز می‌شود و می‌گوید "Importing world...".
3. صبر کنید تا "Successfully imported" نمایش داده شود.
4. به `Play > Worlds` بروید، مپ `Nova Horror - Ravenshollow` را خواهید دید.

### اندروید / iOS
1. فایل `.mcworld` را دانلود کنید (از طریق تلگرام، گوگل درایو، etc).
2. با برنامه مدیریت فایل، روی فایل کلیک کنید و گزینه "Open with Minecraft" را بزنید.
3. Minecraft باز می‌شود و مپ را import می‌کند.
4. اگر باز نشد، فایل را به پوشه `games/com.mojang/minecraftWorlds/` کپی کنید و از حالت zip خارج کنید (نام پوشه world باشد).

---

## مرحله ۲: نصب ادان (.mcaddon) - خیلی مهم

ادان شامل موجودات ترسناک، سیستم ترس، و ۲۰ آیتم لور است.

### نصب
1. فایل `NovaHorror_Bedrock_Addon.mcaddon` را دانلود کنید.
2. **دوبار کلیک کنید** (ویندوز) یا **Open with Minecraft** (موبایل).
3. Minecraft می‌گوید:
   - `Importing Nova Horror Behavior Pack...`
   - `Importing Nova Horror Resource Pack...`
4. صبر کنید تا هر دو "Successfully imported" شوند.

### فعال‌سازی روی مپ (مهم! چون ادان جدا از مپ است)
1. به `Play > Worlds` بروید، روی مپ `Nova Horror` کلیک کنید اما **Play نزنید**، روی آیکون مداد (Edit) کلیک کنید.
2. در منوی سمت چپ، بروید به `Behavior Packs`:
   - در لیست `Available`، `Nova Horror Behavior Pack` را می‌بینید.
   - روی آن کلیک کنید و `Activate` بزنید.
3. حالا بروید به `Resource Packs`:
   - `Nova Horror Resource Pack` را از Available به Active ببرید.
4. اگر می‌خواهید شیدر هم فعال کنید، همینجا در `Resource Packs` شیدر را هم فعال کنید (مرحله ۳).
5. `Play` بزنید.

> **نکته**: اگر ادان را فعال نکنید، مپ فقط یک دنیای خالی با ساختمان‌های ترسناک خواهد بود، بدون موجودات و آیتم‌های خاص.

### عیب‌یابی
- اگر ادان فعال نمی‌شود: مطمئن شوید `Experimental Gameplay` در تنظیمات مپ روشن است (در Edit > Experiments > همه گزینه‌ها را روشن کنید).
- اگر موجودات اسپاون نمی‌شوند: دستور `/gamerule doMobSpawning true` را بزنید.
- اگر آیتم‌ها را نمی‌بینید: `/give @s novahorror:rusted_mansion_key` را تست کنید.

---

## مرحله ۳: نصب شیدر Bedrock (.mcpack)

شیدر God-tier با مه غلیظ، نور دراماتیک، و رنگ سرد.

1. فایل `NovaHorror_Bedrock_Shader.mcpack` را دانلود و دوبار کلیک کنید (یا Open with Minecraft).
2. Import می‌شود.
3. به دو روش می‌توانید فعال کنید:

### روش A: فقط برای این مپ (پیشنهادی)
- Edit مپ > Resource Packs > `Nova Horror Bedrock Shader` را Active کنید.
- مطمئن شوید بالاتر از Resource Pack ادان قرار دارد (اولویت بالاتر).

### روش B: برای همه مپ‌ها (Global)
- Settings > Global Resources > My Packs > شیدر را Active کنید.

> **سازگاری**: شیدر RenderDragon است و روی ویندوز ۱۰/۱۱ و موبایل‌های جدید (که RenderDragon دارند) کار می‌کند. روی بعضی موبایل‌های قدیمی یا کنسول ممکن است کار نکند. اگر صفحه سیاه شد، شیدر را غیرفعال کنید.

---

## ترتیب پیشنهادی فعال‌سازی (از بالا به پایین در Resource Packs)
1. Nova Horror Bedrock Shader (بالاترین)
2. Nova Horror Resource Pack
3. (Behavior Pack در بخش جدا)

---

## دستورات مفید داخل بازی
- `/give @s novahorror:spirit_lantern` - فانوس ارواح برای دیدن مسیر مخفی
- `/give @s novahorror:wardens_amulet` - تعویذ محافظ
- `/scoreboard objectives setdisplay sidebar novahorror.fear` - نمایش نوار ترس
- `/time set midnight` - همیشه شب برای ترس بیشتر
- `/gamerule doDaylightCycle false`

---

## حذف
- برای حذف ادان: Settings > Storage > Behavior Packs / Resource Packs > حذف
- برای حذف مپ: Play > Worlds > Edit (مداد) > Delete World

Enjoy... if you can survive Ravenshollow.
