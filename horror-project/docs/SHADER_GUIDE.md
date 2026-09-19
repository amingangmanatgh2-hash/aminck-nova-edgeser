# راهنمای شیدر God-tier - Nova Horror

## فلسفه شیدر
این شیدر مخصوص ترس طراحی شده، نه زیبایی. هدف:
- بازیکن همیشه احساس ناامنی کند
- نور کم و سایه‌های بلند که حرکت می‌کنند
- مه غلیظ که دید را محدود می‌کند
- رنگ‌های سرد و افسرده، با جهش قرمز در لحظات خطر

---

## Java Shader (Iris/OptiFine) - GLSL

### فایل‌ها
- `gbuffers_terrain.fsh` - نورپردازی زمین، مه حجمی، سایه‌های دراماتیک
- `gbuffers_textured.fsh` - desaturation، cold tint، flicker مشعل
- `shadow.vsh/fsh` - سایه‌های بلند و متحرک
- `composite.fsh` - volumetric fog, god rays, chromatic aberration برای ترس
- `final.fsh` - color grading نهایی، vignette، blood tint

### ویژگی‌های کلیدی
1. **نور و سایه دراماتیک**:
   - `torchLight = pow(lm.x, 2.2)` - کنتراست بالای نور مشعل
   - `skyLight = pow(lm.y, 1.5) * 0.6` - آسمان تاریک‌تر
   - سایه‌ها با `sin(frameTimeCounter * 0.05)` حرکت می‌کنند

2. **مه غلیظ پویا**:
   - `fogFactor = 1.0 - exp(-dist * (0.8 + rainStrength * 0.5))`
   - مه با زمان تغییر می‌کند: `sin(pos.y * 0.1 + time * 0.2)`
   - در باران، مه قرمز خونین می‌شود

3. **رنگ‌بندی سرد**:
   - `COLD_TINT = vec3(0.7, 0.75, 0.85)` - خاکستری/آبی
   - Desaturation 0.35-0.4
   - در blindness (ترس)، `BLOOD_TINT = vec3(1.0, 0.15, 0.15)`

4. **اتمسفریک**:
   - ذرات گرد و غبار: `fract(sin(dot(uv*100, vec2(12.9898,78.233))) * 43758)`
   - نور شمع واقع‌گرایانه: flicker با دو سینوس `sin(time*3)*0.05 + sin(time*7)*0.03`
   - Vignette قوی برای تونل دید
   - Film grain

### نصب
- فایل zip را در `shaderpacks` بریزید
- Iris: `Video Settings > Shader Packs`
- تنظیمات داخل `shaders.properties` قابل تغییر است

---

## Bedrock Shader (RenderDragon) - HLSL/GLSL

### فایل‌ها
- `terrain.vertex/fragment` - مه حجمی، cold tint، dust
- `entity.vertex/fragment` - چشم‌های قرمز درخشان
- `materials/terrain.material` - متریال RenderChunk
- `render_controllers/fog.json` - مه غلیظ کروی

### ویژگی‌ها
- **Volumetric fog**: `fog_start: 10, fog_end: 80, density: 0.08, max_density: 0.9`
- **Cold tint**: `desat = mix(tex.rgb, lum, 0.4 + rain*0.2)` + `coldTint = vec3(0.7,0.8,0.95)`
- **Torch flicker**: `sin(TOTAL_REAL_WORLD_TIME*3.0)*0.05`
- **Blood fog**: `mix(fogCol, vec3(0.15,0.02,0.02), rain*0.5)`
- **Dust**: `fract(sin(dot(uv*100, vec2(12.9898,78.233))) * 43758)`
- **Vignette**: `1.0 - length(screenUV-0.5)*0.8`

### نصب
- `.mcpack` را دوبار کلیک کنید
- در مپ: `Edit > Resource Packs > Activate`
- یا Global: `Settings > Global Resources`

### محدودیت‌های Bedrock
- RenderDragon فقط روی ویندوز و موبایل‌های جدید کار می‌کند
- روی کنسول (Xbox, PlayStation, Switch) شیدرهای شخص ثالث پشتیبانی نمی‌شوند
- اگر FPS کم شد، `render distance` را کم کنید

---

## مقایسه Java vs Bedrock

| ویژگی | Java (Iris) | Bedrock (RenderDragon) |
|-------|-------------|------------------------|
| مه حجمی | بله، raymarched | بله، fog.json |
| سایه متحرک | بله، shadow.vsh | خیر (محدود) |
| نور شمع واقعی | بله، flicker | بله، flicker ساده |
| Vignette | قوی | متوسط |
| Blood tint | بر اساس blindness | بر اساس rain + pulse |
| ذرات گرد و غبار | بله | بله |
| God rays | بله، fake | خیر |
| Chromatic aberration | بله (ترس) | خیر |

---

## تنظیمات پیشنهادی برای حداکثر ترس
- Brightness: Moody (حداقل)
- Render Distance: 8-12 (مه بیشتر)
- FOV: 70 (تونل دید)
- صدا: 100%، موسیقی: 0% (فقط صدای محیط)
- شب بازی کنید، هدفون بزنید
- `doDaylightCycle false` و `time set midnight`

---

## توسعه بیشتر
اگر می‌خواهید شیدر را ویرایش کنید:
- Java: فایل‌های `.fsh` را در `shaders/` ویرایش کنید، GLSL است
- Bedrock: `terrain.fragment` را ویرایش کنید، GLSL ES 3.0 است
- برای افکت خون بیشتر: مقدار `BLOOD_TINT` را زیاد کنید
- برای مه غلیظ‌تر: `fogFactor * 0.7` را به `0.9` تغییر دهید

Enjoy the darkness.
