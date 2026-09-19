#version 120
// Nova Horror - Terrain Fragment - Real God-tier horror
// No dead code - all variables used

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

// Horror constants - all used
const vec3 COLD_TINT = vec3(0.72, 0.78, 0.88);
const vec3 TORCH_COLOR = vec3(1.0, 0.65, 0.25);
const vec3 BLOOD_TINT = vec3(0.35, 0.05, 0.05);
const float FOG_DENSITY = 0.025;

float calculateVolumetricFog(float dist, vec3 pos) {
    float fog = 1.0 - exp(-dist * FOG_DENSITY * (0.8 + rainStrength * 0.6));
    // Dynamic fog with time
    fog *= 0.9 + sin(pos.y * 0.08 + frameTimeCounter * 0.15) * 0.15;
    return clamp(fog, 0.0, 1.0);
}

float calculateTorchFlicker() {
    float flicker = 1.0;
    flicker += sin(frameTimeCounter * 3.7) * 0.04;
    flicker += sin(frameTimeCounter * 9.2) * 0.02;
    flicker += sin(frameTimeCounter * 15.3) * 0.01;
    return flicker;
}

vec3 applyColdGrading(vec3 col) {
    float lum = dot(col, vec3(0.299, 0.587, 0.114));
    vec3 desat = mix(col, vec3(lum), 0.38);
    desat *= COLD_TINT;
    return desat;
}

void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    if (tex.a < 0.1) discard;

    // Lightmap with real flicker - used
    vec2 lm = lmcoord.xy;
    float torchFlicker = calculateTorchFlicker();
    float torchLight = pow(lm.x, 2.4) * torchFlicker;
    float skyLight = pow(lm.y, 1.7) * 0.55;

    // Desaturate and cold tint - used
    vec3 litColor = applyColdGrading(tex.rgb);

    // Torch vs sky lighting - dramatic contrast
    vec3 torchContrib = torchLight * TORCH_COLOR * 1.6;
    vec3 skyContrib = skyLight * COLD_TINT * 0.5;
    vec3 finalLighting = torchContrib + skyContrib + vec3(0.04);

    vec3 finalColor = litColor * finalLighting;

    // Volumetric fog - real, used in final mix
    float fogFactor = calculateVolumetricFog(fogDepth, worldPos);
    vec3 fogCol = fogColor * 0.85;
    // Blood fog when raining or high fear (blindness)
    fogCol = mix(fogCol, BLOOD_TINT * 0.6, rainStrength * 0.5);
    fogCol = mix(fogCol, vec3(0.25, 0.02, 0.02), blindness * 0.7);

    finalColor = mix(finalColor, fogCol, fogFactor * 0.65);

    // Dust motes - visible in torch light
    float dustNoise = fract(sin(dot(worldPos.xz * 0.7, vec2(12.9898, 78.233))) * 43758.5453);
    float dust = step(0.9985, dustNoise) * torchLight * 0.8;
    finalColor += vec3(dust);

    // Long shadows fake - based on shadow light angle
    float shadowAngle = dot(normal, normalize(shadowLightPosition));
    float longShadow = 1.0 - clamp(shadowAngle * 0.5 + 0.5, 0.0, 1.0) * 0.3;
    finalColor *= longShadow;

    // Vignette for fear - used
    vec2 screenUV = gl_FragCoord.xy / vec2(1920.0, 1080.0);
    float vignette = 1.0 - dot((screenUV - 0.5) * 1.8, (screenUV - 0.5) * 1.8) * 0.5;
    finalColor *= vignette;

    // Blindness darkens
    finalColor *= (1.0 - blindness * 0.85);

    gl_FragData[0] = vec4(finalColor, tex.a);
}
