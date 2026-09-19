#version 120
// Nova Horror - Terrain Fragment - Real God-tier horror - DARKER, HEAVIER, CINEMATIC
// Enhanced for separate game feeling: stronger fog, colder colors, fear impacts whole screen

varying vec2 texcoord;
varying vec4 color;
varying vec3 normal;
varying vec4 lmcoord;
varying vec3 worldPos;
varying float fogDepth;

uniform sampler2D texture;
uniform sampler2D lightmap;
uniform sampler2D shadow;
uniform float frameTimeCounter;
uniform vec3 fogColor;
uniform vec3 skyColor;
uniform float rainStrength;
uniform float blindness;
uniform int worldTime;
uniform vec3 shadowLightPosition;
uniform mat4 gbufferModelViewInverse;
uniform vec3 cameraPosition;

// Horror constants - all used - DARKER
const vec3 COLD_TINT = vec3(0.65, 0.72, 0.85);
const vec3 TORCH_COLOR = vec3(1.0, 0.58, 0.22);
const vec3 BLOOD_TINT = vec3(0.32, 0.04, 0.04);
const float FOG_DENSITY = 0.045;

float calculateVolumetricFog(float dist, vec3 pos) {
    // Stronger fog
    float fog = 1.0 - exp(-dist * FOG_DENSITY * (1.0 + rainStrength * 0.8 + blindness * 0.6));
    // Dynamic fog with time + fear
    fog *= 0.85 + sin(pos.y * 0.08 + frameTimeCounter * 0.12) * 0.18 + blindness * 0.2;
    // Thicker at low Y (basement feeling)
    float lowYFactor = clamp((60.0 - pos.y) * 0.02, 0.0, 0.6);
    fog += lowYFactor * (0.3 + blindness * 0.3);
    return clamp(fog, 0.0, 1.0);
}

float calculateTorchFlicker() {
    float flicker = 1.0;
    flicker += sin(frameTimeCounter * 3.7) * 0.06;
    flicker += sin(frameTimeCounter * 9.2) * 0.035;
    flicker += sin(frameTimeCounter * 15.3) * 0.02;
    // More flicker when fear high
    flicker += sin(frameTimeCounter * 20.0) * blindness * 0.08;
    return flicker;
}

vec3 applyColdGrading(vec3 col, float fear) {
    float lum = dot(col, vec3(0.299, 0.587, 0.114));
    // Stronger desaturation when fear high - colder, heavier
    float desatAmount = 0.55 + fear * 0.25;
    vec3 desat = mix(col, vec3(lum), desatAmount);
    // Colder tint increases with fear
    vec3 cold = mix(COLD_TINT, vec3(0.5, 0.55, 0.75), fear * 0.4);
    desat *= cold;
    // Slight blue shift at high fear
    desat.b += fear * 0.08;
    return desat;
}

void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    if (tex.a < 0.1) discard;

    // Lightmap with real flicker - used
    vec2 lm = lmcoord.xy;
    float torchFlicker = calculateTorchFlicker();
    float torchLight = pow(lm.x, 2.8) * torchFlicker;
    // Reduced sky light for darker, heavier feeling
    float skyLight = pow(lm.y, 2.0) * 0.35;

    // Desaturate and cold tint - stronger with fear
    vec3 litColor = applyColdGrading(tex.rgb, blindness);

    // Torch vs sky lighting - dramatic contrast, darker
    vec3 torchContrib = torchLight * TORCH_COLOR * 1.4;
    vec3 skyContrib = skyLight * COLD_TINT * 0.35;
    vec3 finalLighting = torchContrib + skyContrib + vec3(0.025);

    vec3 finalColor = litColor * finalLighting;

    // Volumetric fog - stronger, heavier
    float safeFogDepth = max(fogDepth, 0.0);
    float fogFactor = calculateVolumetricFog(safeFogDepth, worldPos);
    vec3 fogCol = fogColor * 0.75;
    // Blood fog when raining or high fear
    fogCol = mix(fogCol, BLOOD_TINT * 0.7, rainStrength * 0.6);
    fogCol = mix(fogCol, vec3(0.22, 0.02, 0.02), blindness * 0.75);
    // Extra dark fog at night (worldTime check)
    float isNight = clamp((13000.0 - float(worldTime % 24000)) * 0.0001 + 0.5, 0.0, 1.0);
    fogCol = mix(fogCol, vec3(0.05, 0.05, 0.08), isNight * 0.3);

    finalColor = mix(finalColor, fogCol, fogFactor * 0.75);

    // Dust motes - visible in torch light, more when fear
    float dustNoise = fract(sin(dot(worldPos.xz * 0.7, vec2(12.9898, 78.233))) * 43758.5453);
    float dust = step(0.998, dustNoise) * torchLight * (0.8 + blindness * 0.5);
    finalColor += vec3(dust);

    // Long shadows fake - stronger
    float shadowAngle = dot(normal, normalize(shadowLightPosition));
    float longShadow = 1.0 - clamp(shadowAngle * 0.5 + 0.5, 0.0, 1.0) * 0.4;
    finalColor *= longShadow;

    // Vignette for fear - stronger, heavier, cinematic
    vec2 screenUV = gl_FragCoord.xy / vec2(1920.0, 1080.0);
    float vignette = 1.0 - dot((screenUV - 0.5) * (1.8 + blindness * 0.6), (screenUV - 0.5) * (1.8 + blindness * 0.6)) * (0.5 + blindness * 0.4);
    finalColor *= vignette;

    // Blindness darkens much more - heavier feeling
    finalColor *= (1.0 - blindness * 0.92);
    // Extra darkness at edges when fear high
    float edgeDark = pow(length(screenUV - 0.5) * 1.9, 2.5) * blindness * 0.6;
    finalColor -= edgeDark;

    // Slight film grain for cinematic
    float grain = fract(sin(dot(texcoord * 120.0, vec2(12.9898, 78.233))) * 43758.5453);
    finalColor += (grain - 0.5) * 0.012 * (1.0 + blindness * 0.5);

    gl_FragData[0] = vec4(finalColor, tex.a);
}
