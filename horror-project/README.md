# Nova Horror - Ravenshollow - پروژه ترسناک کامل ماینکرفت

> **یه پروژه ترسناک کامل، هم Java هم Bedrock، شامل ۴ بخش جدا: مپ، مود/ادان، شیدر، آیتم‌ها با لور**

---

## داستان کوتاه
در سال ۱۸۹۷، دکتر سیلاس وین عمارتی در جنگل Blackwood ساخت تا مرگ را درمان کند. روستا ناپدید شد. فقط الارا ماند. ۱۰۰ سال بعد، تو به دنبال شیء لعنت‌شده‌ای به نام **قلب تاریکی (Heart of Dread)** وارد می‌شوی. هرچی جلوتر می‌ری، فضا ترسناک‌تر می‌شه...

مپ داستان‌محور است: جنگل مه‌آلود → روستای رها شده → عمارت متروکه → تونل‌ها و معدن → زیرزمین‌های مخفی → باس فاینال The Forgotten.

---

## ساختار پروژه

```
horror-project/
├── java-map/                  # مپ Java
│   ├── world/                 # world save (level.dat + region)
│   ├── generator_sparse.py    # اسکریپت تولید مپ
│   └── dist/NovaHorror_Java_Map.zip
├── bedrock-map/               # مپ Bedrock
│   ├── world/                 # world (level.dat + db/LevelDB)
│   ├── generator.py
│   └── dist/NovaHorror_Bedrock_Map.mcworld
├── java-mod/                  # مود Forge 1.20.1
│   ├── src/main/java/com/nova/horror/  # سورس کامل
│   │   ├── NovaHorrorMod.java          # سیستم ترس، جامپ‌اسکر
│   │   ├── entity/ (Shade, Crawler, Weeper, Forgotten)
│   │   ├── item/ (20 آیتم)
│   │   └── effect/ (Fear)
│   ├── src/main/resources/
│   │   ├── assets/ (تکسچرها، مدل‌ها، lang)
│   │   └── data/ (functions ترس)
│   └── dist/novahorror-forge-1.20.1-1.0.0.jar
├── bedrock-addon/             # ادان Bedrock (BP+RP)
│   ├── behavior_pack/ (entities, items, functions, spawn_rules)
│   ├── resource_pack/ (textures, entity, texts)
│   └── dist/NovaHorror_Bedrock_Addon.mcaddon
├── java-shader/               # شیدر Java (Iris/OptiFine)
│   ├── shaders/ (GLSL)
│   │   ├── gbuffers_terrain.fsh/vsh
│   │   ├── gbuffers_textured.fsh/vsh
│   │   ├── shadow.vsh/fsh
│   │   ├── composite.fsh (volumetric fog)
│   │   └── final.fsh (cold grading, blood)
│   └── dist/NovaHorror_Java_Shader.zip
├── bedrock-shader/            # شیدر Bedrock (RenderDragon)
│   ├── shaders/glsl/ (terrain, entity)
│   ├── materials/
│   └── dist/NovaHorror_Bedrock_Shader.mcpack
└── docs/
    ├── STORY.md               # داستان کامل
    ├── ITEMS.md               # ۲۰ آیتم با لور
    ├── INSTALL_JAVA.md        # راهنمای نصب Java
    ├── INSTALL_BEDROCK.md     # راهنمای نصب Bedrock
    └── SHADER_GUIDE.md        # راهنمای شیدر
```

---

## خروجی نهایی (۸ فایل جدا)

### Java Edition
1. **مپ**: `java-map/dist/NovaHorror_Java_Map.zip` - world save تمیز، بدون مود/شیدر، ۵۱۲x۵۱۲ بلاک، عمارت، روستا، تونل، معدن، جنگل مه‌آلود
2. **مود**: `java-mod/dist/novahorror-forge-1.20.1-1.0.0.jar` - Forge 1.20.1، ۴ موجود، سیستم ترس، جامپ‌اسکر، ۲۰ آیتم
3. **شیدر**: `java-shader/dist/NovaHorror_Java_Shader.zip` - GLSL، Iris/OptiFine، مه حجمی، سایه دراماتیک، رنگ سرد
4. **آیتم‌ها**: داخل مود + مستند در `docs/ITEMS.md`

### Bedrock Edition
1. **مپ**: `bedrock-map/dist/NovaHorror_Bedrock_Map.mcworld` - world تمیز، LevelDB، بدون ادان
2. **ادان**: `bedrock-addon/dist/NovaHorror_Bedrock_Addon.mcaddon` - Behavior+Resource، standalone، فعال‌سازی از طریق تنظیمات مپ
3. **شیدر**: `bedrock-shader/dist/NovaHorror_Bedrock_Shader.mcpack` - RenderDragon، مه غلیظ، نور دراماتیک
4. **آیتم‌ها**: داخل ادان + مستند در `docs/ITEMS.md`

همه فایل‌ها standalone نصب می‌شن و با هم کار می‌کنن.

---

## ویژگی‌های کلیدی

### مپ (هر دو نسخه)
- **سایز**: ۱۰۲۴x۱۰۲۴ بلاک (۴ ریجن)، چند صد بلاک در چند صد بلاک
- **عمارت متروکه بزرگ**: ۸۰x۶۰، ۳ طبقه + زیرزمین مخفی، کتابخانه، آزمایشگاه، اتاق کودک الارا
- **تونل‌ها و معدن‌های رهاشده**: ۳۰۰ بلاک تونل متصل، ریل شکسته، واگن استخوان، صدای قدم
- **روستای رها شده**: ۵ خانه، چاه عمیق با کلید زنگ‌زده، رد خون
- **جنگل مه‌آلود**: ۸۰+ درخت تاریک، مه غلیظ
- **زیرزمین‌های مخفی**: سرداب الارا، اتاق قلب تاریکی
- **داستان‌محور**: قطب‌نمای شکسته → روستا → عمارت → تونل → نجات الارا

### مود/ادان
- **موجودات سفارشی**:
  - The Shade: نامرئی در نور، تلپورت پشت سر، تعقیب
  - Crawler: روی سقف تونل، دراپ از سقف
  - Weeper: زن گریان، افکت غم، تاریکی
  - The Forgotten (باس): ۳۰۰ HP، باس‌بار، احضار Shade، هاله ترس
- **افکت‌های ترسناک محیطی**:
  - جامپ‌اسکر رندوم (۴ نوع)
  - تاریکی ناگهانی، صدای قدم، نجوا
  - صدای قلب، کلاغ، Warden
- **مکانیک ترس/سلامت روانی**:
  - نوار ترس ۰-۱۰۰، در تاریکی پر می‌شود
  - در ۲۰-۴۰: کندی، ۴۰-۶۰: تاریکی، ۶۰-۸۰: گیجی، ۸۰+: کوری + Wither
  - شمع مقدس منطقه امن می‌سازد
  - اکسیر فراموشی ترس را پاک می‌کند

### شیدر God-tier
- نور کم، سایه‌های بلند متحرک (sin(time))
- مه غلیظ پویا (volumetric fog) با `exp(-dist*0.02)`
- رنگ سرد خاکستری/آبی، قرمز خونین در خطر
- ذرات گرد و غبار، نور شمع واقع‌گرایانه با flicker
- Vignette قوی، film grain، chromatic aberration در ترس

### آیتم‌ها (۲۰ تا)
هر آیتم تکسچر اختصاصی، اسم، لور فارسی/انگلیسی، و قدرت خاص:
1. کلید زنگ‌زده عمارت - باز کردن در اصلی
2. قلب تاریکی - آیتم پایانی، تپنده
3. تعویذ نگهبان - ۱۰ ثانیه محافظت
4. فانوس ارواح - نمایش مسیر مخفی
5. دفترچه سیلاس - لور + رمز ۲۱۰
6. عکس پاره (۴ تکه) - پازل گاوصندوق
7. چاقوی تشریفات - سلاح
8. شمع مقدس - منطقه امن ۱۵ بلاک
9. کلید سرداب - نجات الارا
10. جمجمه زمزمه‌گر - راهنمایی رندوم
11. طلسم خون - برای شکستن نفرین
12. طناب پوسیده - پایین رفتن از چاه
13. قطب‌نمای شکسته - همیشه به عمارت
14. ماسک مترسک - مخفی از Weeper
15. اکسیر فراموشی - پاک کردن ترس
16. تکه آینه سیاه - دیدن نامرئی‌ها
17. نامه التماس - شروع کوئست
18. کلید معدن - باز کردن معدن
19. استخوان نفرین‌شده - سوخت فانوس
20. تاج خار - احضار باس نهایی

---

## نصب سریع

### Java
1. مپ را در `%appdata%/.minecraft/saves/` آنزیپ کن
2. مود را در `mods/` بریز
3. شیدر را در `shaderpacks/` بریز و با Iris فعال کن
4. Forge 1.20.1 را اجرا کن

### Bedrock
1. `.mcworld` را دوبار کلیک کن تا مپ import شود
2. `.mcaddon` را دوبار کلیک کن تا ادان import شود
3. Edit مپ > Behavior Packs > ادان را Active کن
4. Edit مپ > Resource Packs > ریسورس ادان + شیدر را Active کن
5. Play

راهنمای کامل در `docs/INSTALL_JAVA.md` و `docs/INSTALL_BEDROCK.md`

---

## تکنیکال

- **Java Map**: تولید با Python + anvil-parser (EmptyRegion)، sparse chunks برای سرعت، level.dat با DataVersion 3465 (1.20.1)
- **Bedrock Map**: تولید با Python + LevelDB log writer (crc32c)، subchunk v8 با NBT palette، Data2D heightmap
- **Java Mod**: Forge 47.1.0، Java 17، DeferredRegister برای آیتم‌ها و موجودات، scoreboard برای ترس
- **Bedrock Addon**: manifest v2، entities با behavior.nearest_attackable_target، items با custom components، functions برای ترس
- **Java Shader**: GLSL 120، Iris/OptiFine compatible، composite برای fog
- **Bedrock Shader**: RenderDragon, GLSL ES 3.0, materials JSON

---

## لایسنس
MIT - برای استفاده شخصی و آموزشی

---

## سازنده
AMINCK Nova Edge - God-tier horror project

> به ریونزهالو خوش آمدی... دیگر راه برگشتی نیست.
