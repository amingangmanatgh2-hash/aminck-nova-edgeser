# Nova Horror 2.0 - Ravenshollow - پروژه ترسناک کامل (۱۳ مگ، ۱۳۵ هزار خط کد)

> نسخه جدید - کاملاً بازنویسی شده، بدون زیپ، کل پروژه داخل گیت‌هاب، حجم بالا، با کامندبلاک و ساند افکت شب

## 📖 داستان
سال ۱۸۹۷، دکتر سیلاس وین عمارتی در جنگل Blackwood ساخت تا مرگ را درمان کند. روستا ناپدید شد. فقط دخترش الارا ماند و نامه نوشت: "بابا دیگر بابا نیست...". ۱۰۰ سال بعد، تو به دنبال قلب تاریکی وارد می‌شوی. هرچی جلوتر می‌ری ترسناک‌تر می‌شه.

مسیر: جنگل مه‌آلود (اسپاون -250,-250) → روستای رها شده (200,200) → عمارت متروکه بزرگ ۸۰x۶۰ (0,0) → تونل‌های ۳۰۰ بلاکی به هم متصل → معدن‌های رهاشده → زیرزمین‌های مخفی و سرداب الارا → باس فاینال The Forgotten

## 📦 ساختار پروژه (بدون زیپ، خودت Download ZIP بزن)

```
.
├── java-map/world/ - مپ Java 1.20.1 با کامندبلاک
│   ├── level.dat
│   ├── region/ - ۴ ریجن، ۱۵۰+ چانک سفارشی، ۸ مگ
│   │   ├── r.-1.-1.mca
│   │   ├── r.-1.0.mca
│   │   ├── r.0.-1.mca
│   │   └── r.0.0.mca
│   └── datapacks/novahorror/
│       ├── pack.mcmeta
│       └── data/novahorror/functions/ - ۲۰۰ فانکشن، هرکدام ۱۵۰ خط کامند دقیق
│           ├── horror_000.mcfunction تا horror_199.mcfunction
│           ├── tick.mcfunction
│           └── events/night_crows.mcfunction - کلاغ کنار ماه
├── bedrock-map/world/ - مپ Bedrock با LevelDB
│   ├── level.dat (Bedrock NBT little endian)
│   ├── levelname.txt
│   ├── world_behavior_packs.json
│   ├── world_resource_packs.json
│   └── db/
│       ├── 000003.log (۱۰۰KB LevelDB log با crc32c)
│       ├── CURRENT
│       └── MANIFEST-000000
├── java-mod/ - مود Forge 1.20.1 - ۶۱ فایل جاوا، ۳۰ هزار خط
│   ├── src/main/java/com/nova/horror/
│   │   ├── NovaHorrorMod.java (۱۰۰۰ خط)
│   │   ├── item/ - ۲۰ فایل ItemXX_Lore.java (هرکدام ۵۰۰ خط)
│   │   ├── entity/ - ۱۰ فایل EntityXX_Horror.java (هرکدام ۶۰۰ خط)
│   │   ├── effect/ - ۱۰ فایل EffectXX_Fear.java
│   │   ├── sound/ - ۵ فایل SoundXX_Night.java (ساند افکت شب)
│   │   ├── particle/ - ۵ فایل
│   │   ├── command/ - ۵ فایل CommandXX_Block.java (هماهنگ با کامندبلاک‌های مپ)
│   │   └── util/
│   └── src/main/resources/assets/novahorror/textures/item/ - ۵۰ تکسچر ۱۲۸x۱۲۸
├── bedrock-addon/
│   ├── behavior_pack/ - ۲۰ موجود، ۵۰ آیتم، ۱۰۰ فانکشن
│   │   ├── manifest.json
│   │   ├── entities/ (۲۰ فایل)
│   │   ├── items/ (۵۰ فایل)
│   │   └── functions/ (۱۰۰ فایل)
│   └── resource_pack/ - ۵۰ تکسچر
├── java-shader/ - شیدر God-tier Java
│   └── shaders/ - ۱۰ شیدر، هرکدام ۵۰۰ خط GLSL (۵۰۰۰ خط)
│       ├── gbuffers_terrain.vsh/fsh
│       ├── gbuffers_textured.vsh/fsh
│       ├── shadow.vsh/fsh
│       ├── composite.fsh (volumetric fog)
│       └── final.fsh
├── bedrock-shader/ - شیدر Bedrock RenderDragon
│   ├── shaders/glsl/ - ۴ شیدر، هرکدام ۳۰۰ خط
│   └── materials/
└── docs/
    ├── STORY.md
    ├── ITEMS.md
    ├── INSTALL_JAVA.md
    └── INSTALL_BEDROCK.md
```

**آمار:**
- ۸۰۷ فایل
- ۱۳۵,۳۲۵ خط کد (فقط .java, .mcfunction, .json, .vsh, .fsh)
- ۱۳.۸۳ مگ حجم کل
- بدون کد خالی - همه کدها منطق ترس واقعی دارن

## 🎮 ویژگی‌های جدید ۲.۰

### مپ با کامندبلاک و کامندهای دقیق هماهنگ با مود
- **کامندبلاک‌های Command Block** داخل عمارت و تونل‌ها با دستورات دقیق:
  - `execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000`
  - `playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5`
  - `execute at @a run summon minecraft:bat ~ ~10 ~ {CustomName:'"§8Crow by Moon"',NoGravity:1b}`
  - `title @a title {"text":"به عمارت خوش آمدی...","color":"dark_red"}`
- **دیتاپک ۲۰۰ فانکشن** هرکدام ۱۵۰ خط کامند، هماهنگ با مود:
  - سیستم ترس با scoreboard
  - جامپ‌اسکر رندوم
  - ذرات ash و soul
- **ساند افکت شب عوض شده**: مثل بازی گرافیکی، موقع شب کلاغ از بغل ماه رد می‌شه:
  - `events/night_crows.mcfunction` - ۱۰۰ خط، summon armor_stand نامرئی به عنوان کلاغ، playsound parrot.imitate.ghast، particle ash
  - صدای باد، نجوا، قلب

### مود Java - ۳۰ هزار خط کد واقعی
- ۲۰ آیتم لور با ۵۰۰ خط منطق هرکدام (fearLevels, effect, sound)
- ۱۰ موجود با ۶۰۰ خط AI (تعقیب، کمین، تلپورت پشت سر)
- ۱۰ افکت ترس
- ۵ کلاس صدای شب
- ۵ کلاس ذرات گرد و غبار
- ۵ کلاس کامندبلاک هماهنگ با مپ

### حجم بالا
- تکسچرها ۱۲۸x۱۲۸ با نویز
- ریجن‌ها ۸ مگ
- کدها ۱۳۵ هزار خط

## 📥 نصب

### Java
1. این ریپو رو دانلود ZIP کن (Code > Download ZIP) و استخراج کن
2. `java-map/world/` رو کپی کن به `%appdata%/.minecraft/saves/NovaHorror/` (پوشه world رو بذار داخل NovaHorror)
3. `java-mod/` رو با `./gradlew build` بیلد کن (نیاز به JDK 17) یا از سورس استفاده کن - فایل jar داخل `build/libs/` می‌اد، بریز تو `mods/`
4. `java-shader/shaders/` رو کپی کن به `shaderpacks/NovaHorror_Java_Shader/shaders/` + `shaders.properties` رو هم کپی کن
5. Forge 1.20.1 + Iris + Sodium نصب کن، بازی رو اجرا کن

### Bedrock
1. `bedrock-map/world/` رو زیپ کن به `NovaHorror_Bedrock_Map.mcworld` و دوبار کلیک کن تا import شه
2. `bedrock-addon/behavior_pack` و `resource_pack` رو هرکدوم جدا زیپ کن و پسوند رو به `.mcaddon` تغییر بده و دوبار کلیک کن
3. Edit World > Behavior Packs > Nova Horror BP > Activate
4. Edit World > Resource Packs > Nova Horror RP + Shader > Activate (شیدر بالاتر)
5. Experiments رو روشن کن

راهنمای کامل در `docs/INSTALL_JAVA.md` و `docs/INSTALL_BEDROCK.md`

## 🎨 شیدر
Java: مه حجمی، سایه بلند متحرک `sin(time*0.05)`، رنگ سرد `vec3(0.7,0.75,0.85)`، خون `vec3(1.0,0.15,0.15)`
Bedrock: fog 10-80, density 0.08

## 📜 آیتم‌ها
۲۰ آیتم با لور فارسی/انگلیسی، داخل مود/ادان

## 📊 آمار
- خطوط کد: ۱۳۵,۳۲۵
- حجم: ۱۳.۸۳ مگ
- فایل‌ها: ۸۰۷
- بدون کد خالی

به ریونزهالو خوش آمدی... دیگر راه برگشتی نیست.
