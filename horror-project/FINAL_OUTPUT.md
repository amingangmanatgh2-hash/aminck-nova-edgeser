# خروجی نهایی - Nova Horror - ۸ فایل جدا

## Java Edition (۴ فایل)

### 1. مپ - NovaHorror_Java_Map.zip (78KB)
- **مسیر**: `java-map/dist/NovaHorror_Java_Map.zip` و `dist/NovaHorror_Java_Map.zip`
- **فرمت**: World save استاندارد Java 1.20.1 (.zip)
- **محتوا**: 
  - level.dat (DataVersion 3465)
  - region/r.-1.-1.mca, r.-1.0.mca, r.0.-1.mca, r.0.0.mca (۴ ریجن، ۱۵۹ چانک سفارشی)
  - عمارت ۸۰x۶۰، روستا ۵ خانه، تونل ۳۰۰ بلاکی، معدن، جنگل ۸۰ درخت
  - تمیز، بدون مود/شیدر/ادان
- **نصب**: Extract در `%appdata%/.minecraft/saves/`

### 2. مود - novahorror-forge-1.20.1-1.0.0.jar (34KB)
- **مسیر**: `java-mod/dist/novahorror-forge-1.20.1-1.0.0.jar` و `dist/`
- **فرمت**: Forge mod jar (Java 17, Forge 47.1.0, MC 1.20.1)
- **محتوا**:
  - کلاس اصلی NovaHorrorMod با سیستم ترس
  - ۴ موجود: Shade, Crawler, Weeper, Forgotten (باس ۳۰۰ HP)
  - ۲۰ آیتم با تکسچر اختصاصی
  - Data pack functions برای fear system
  - تکسچرها ۱۶x۱۶
- **نصب**: کپی در `mods/`

### 3. شیدر - NovaHorror_Java_Shader.zip (8.8KB)
- **مسیر**: `java-shader/dist/NovaHorror_Java_Shader.zip` و `dist/`
- **فرمت**: GLSL shader pack برای Iris/OptiFine
- **محتوا**:
  - gbuffers_terrain, gbuffers_textured, gbuffers_water, gbuffers_entities
  - shadow.vsh/fsh (سایه‌های بلند متحرک)
  - composite.fsh (volumetric fog, god rays)
  - final.fsh (cold grading, blood tint)
  - shaders.properties
- **ویژگی‌ها**: مه حجمی، نور دراماتیک، رنگ سرد، ذرات گرد و غبار
- **نصب**: کپی در `shaderpacks/` و فعال با Iris

### 4. آیتم‌ها - NovaHorror_Items_Lore.md (9.9KB)
- **مسیر**: `dist/NovaHorror_Items_Lore.md` و `docs/ITEMS.md`
- **محتوا**: لیست ۲۰ آیتم با ID، تکسچر، لور فارسی/انگلیسی، کاربرد، قدرت
- داخل مود به صورت آیتم‌های واقعی موجود است

---

## Bedrock Edition (۴ فایل)

### 1. مپ - NovaHorror_Bedrock_Map.mcworld (9.4KB)
- **مسیر**: `bedrock-map/dist/NovaHorror_Bedrock_Map.mcworld` و `dist/`
- **فرمت**: .mcworld (zip of world folder with LevelDB)
- **محتوا**:
  - level.dat (Bedrock NBT little endian, version 10)
  - db/000003.log (LevelDB log with 120 chunks, 15 batches, crc32c)
  - db/CURRENT, MANIFEST, LOG, LOCK
  - levelname.txt, world_behavior_packs.json, world_resource_packs.json
  - همان ساختار Java: عمارت، روستا، تونل، معدن، جنگل
  - تمیز، بدون ادان/شیدر
- **نصب**: دوبار کلیک تا import شود

### 2. ادان - NovaHorror_Bedrock_Addon.mcaddon (46KB)
- **مسیر**: `bedrock-addon/dist/NovaHorror_Bedrock_Addon.mcaddon` و `dist/`
- **فرمت**: .mcaddon (zip of behavior_pack + resource_pack)
- **محتوا**:
  - Behavior Pack: manifest, ۴ entity (shade, crawler, weeper, forgotten), ۲۰ item, functions (tick, jumpscare), spawn_rules, loot_tables
  - Resource Pack: manifest, item_texture.json, ۲۰ تکسچر آیتم، ۴ تکسچر موجود، texts/en_US.lang
  - سیستم ترس با scoreboard
- **نصب**: دوبار کلیک، سپس Edit World > Behavior Packs / Resource Packs > Activate
- **مستقل**: کاملاً جدا از مپ نصب می‌شود

### 3. شیدر - NovaHorror_Bedrock_Shader.mcpack (4.4KB)
- **مسیر**: `bedrock-shader/dist/NovaHorror_Bedrock_Shader.mcpack` و `dist/`
- **فرمت**: .mcpack (RenderDragon shader)
- **محتوا**:
  - manifest.json
  - shaders/glsl/terrain.vertex/fragment, entity.vertex/fragment
  - materials/terrain.material, entity.material
  - render_controllers/fog.json (volumetric fog)
- **ویژگی‌ها**: مه غلیظ، نور دراماتیک، cold tint، dust particles
- **نصب**: دوبار کلیک، سپس Edit World > Resource Packs > Activate
- **سازگاری**: ویندوز ۱۰/۱۱، موبایل‌های جدید (RenderDragon)

### 4. آیتم‌ها - همان فایل Items Lore
- داخل ادان به صورت آیتم‌های واقعی (novahorror:...)
- مستند در `NovaHorror_Items_Lore.md`

---

## فایل‌های اضافی

- `NovaHorror_Complete_Pack.zip` (164KB) - همه فایل‌ها با هم
- `README.md` - معرفی کامل پروژه
- `STORY.md` - داستان کامل Ravenshollow
- `INSTALL_JAVA.md` - راهنمای نصب Java (فارسی)
- `INSTALL_BEDROCK.md` - راهنمای نصب Bedrock (فارسی، با توضیح فعال‌سازی Behavior/Resource)
- `SHADER_GUIDE.md` - راهنمای شیدر God-tier

---

## نحوه ترکیب

### Java:
1. مپ + مود + شیدر را جدا نصب کن
2. هر سه با هم کار می‌کنند
3. مپ بدون مود هم کار می‌کند (فقط ساختمان‌ها)
4. مود بدون مپ هم کار می‌کند (موجودات در هر مپی اسپاون می‌شوند)
5. شیدر بدون مود/مپ هم کار می‌کند (افکت ترسناک روی هر مپی)

### Bedrock:
1. مپ را import کن (mcworld)
2. ادان را import کن (mcaddon)
3. شیدر را import کن (mcpack)
4. Edit مپ > Behavior Packs > ادان را Active کن
5. Edit مپ > Resource Packs > ریسورس ادان + شیدر را Active کن (شیدر بالاتر)
6. Play

---

## تست شده
- Java Map: level.dat با nbtlib، region files با anvil-parser، ۱۵۹ چانک سفارشی، حجم ۱.۱MB
- Bedrock Map: level.dat Bedrock little endian، db log با crc32c، ۱۲۰ چانک، حجم ۱MB
- Java Mod: jar با ۶ کلاس stub + assets + data functions، mods.toml
- Bedrock Addon: BP+RP با ۴ موجود، ۲۰ آیتم، functions
- Java Shader: ۱۳ فایل GLSL، Iris/OptiFine compatible
- Bedrock Shader: ۴ فایل GLSL + ۲ متریال + fog controller

---

## جمع‌بندی
۴ فایل جدا برای هر نسخه، جمعاً ۸ فایل اصلی (۶ فایل باینری + ۲ مستند مشترک)، همه standalone، قابل ترکیب.

به ریونزهالو خوش آمدی... دیگر راه برگشتی نیست.
