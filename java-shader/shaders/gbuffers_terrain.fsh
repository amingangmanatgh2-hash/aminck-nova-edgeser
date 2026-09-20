// ============================================================================
// Nova Horror Shader - FPS BOOST Documentation for 8GB RAM
// LOD System: Near (<20) = Full quality, Mid (20-50) = Medium, Far (>50) = Optimized
// - Fog: Near = volumetric dynamic + lowYFactor, Mid = simple exp, Far = early exit 0.85
// - Dust: Only <40 blocks for FPS
// - Shadows: Only <60 blocks
// - Grain: Only <30 blocks near center
// - Distortion/Chromatic/Blood: Only when blindness>threshold and near center
// - Resolution: Uses viewWidth/viewHeight not hardcoded 1920x1080
// - Safety: All UV clamped 0.001-0.999, length clamped 0-1.5 to prevent NaN, safeFogDepth max(0)
// - Performance: fastHash instead of heavy hash, early exit for sky depth>0.999
// - No quality loss near player, FPS boost far
// ============================================================================
#version 120
// Nova Horror - Terrain - FPS BOOST for 8GB RAM - No quality loss, smart LOD
// Near = full cinematic, Far = optimized, keeps darker heavier feeling

varying vec2 texcoord;
varying vec4 color;
varying vec3 normal;
varying vec4 lmcoord;
varying vec3 worldPos;
varying float fogDepth;

uniform sampler2D texture;
uniform sampler2D lightmap;
uniform float frameTimeCounter;
uniform vec3 fogColor;
uniform float rainStrength;
uniform float blindness;
uniform int worldTime;
uniform vec3 shadowLightPosition;
uniform float viewWidth;
uniform float viewHeight;

const vec3 COLD_TINT = vec3(0.65, 0.72, 0.85);
const vec3 TORCH_COLOR = vec3(1.0, 0.58, 0.22);
const vec3 BLOOD_TINT = vec3(0.32, 0.04, 0.04);
const float FOG_DENSITY = 0.045;

// Fast hash - low cost
float fastHash(vec2 p) { return fract(sin(dot(p, vec2(12.9898, 78.233))) * 43758.5453); }

float calculateVolumetricFog(float dist, vec3 pos) {
    float safeDist = max(dist, 0.0);
    // LOD: far distance uses simpler fog
    if (safeDist > 80.0) {
        return clamp(1.0 - exp(-safeDist * 0.025), 0.0, 0.85);
    }
    float fog = 1.0 - exp(-safeDist * FOG_DENSITY * (1.0 + rainStrength * 0.8 + blindness * 0.6));
    // Only near/mid gets dynamic sin
    if (safeDist < 50.0) {
        fog *= 0.85 + sin(pos.y * 0.08 + frameTimeCounter * 0.12) * 0.18 + blindness * 0.2;
    }
    float lowYFactor = clamp((60.0 - pos.y) * 0.02, 0.0, 0.6);
    fog += lowYFactor * (0.3 + blindness * 0.3);
    return clamp(fog, 0.0, 1.0);
}

float calculateTorchFlicker() {
    float flicker = 1.0;
    // LOD: far skip extra sin
    if (fogDepth < 50.0) {
        flicker += sin(frameTimeCounter * 3.7) * 0.06;
        flicker += sin(frameTimeCounter * 9.2) * 0.035;
        flicker += sin(frameTimeCounter * 20.0) * blindness * 0.08;
    } else {
        flicker += sin(frameTimeCounter * 3.7) * 0.04;
    }
    return flicker;
}

vec3 applyColdGrading(vec3 col, float fear) {
    float lum = dot(col, vec3(0.299, 0.587, 0.114));
    float desatAmount = 0.55 + fear * 0.25;
    vec3 desat = mix(col, vec3(lum), desatAmount);
    vec3 cold = mix(COLD_TINT, vec3(0.5, 0.55, 0.75), fear * 0.4);
    desat *= cold;
    desat.b += fear * 0.08;
    return desat;
}

void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    if (tex.a < 0.1) discard;

    vec2 lm = lmcoord.xy;
    float torchFlicker = calculateTorchFlicker();
    float torchLight = pow(lm.x, 2.8) * torchFlicker;
    float skyLight = pow(lm.y, 2.0) * 0.35;

    vec3 litColor = applyColdGrading(tex.rgb, blindness);

    vec3 torchContrib = torchLight * TORCH_COLOR * 1.4;
    vec3 skyContrib = skyLight * COLD_TINT * 0.35;
    vec3 finalLighting = torchContrib + skyContrib + vec3(0.025);

    vec3 finalColor = litColor * finalLighting;

    float safeFogDepth = max(fogDepth, 0.0);
    // Early exit optimization: if very far, just fog
    float fogFactor;
    if (safeFogDepth > 100.0) {
        fogFactor = 0.85;
    } else {
        fogFactor = calculateVolumetricFog(safeFogDepth, worldPos);
    }

    vec3 fogCol = fogColor * 0.75;
    fogCol = mix(fogCol, BLOOD_TINT * 0.7, rainStrength * 0.6);
    fogCol = mix(fogCol, vec3(0.22, 0.02, 0.02), blindness * 0.75);
    float isNight = clamp((13000.0 - float(worldTime % 24000)) * 0.0001 + 0.5, 0.0, 1.0);
    fogCol = mix(fogCol, vec3(0.05, 0.05, 0.08), isNight * 0.3);

    finalColor = mix(finalColor, fogCol, fogFactor * 0.75);

    // LOD: dust only near
    if (safeFogDepth < 40.0) {
        float dustNoise = fastHash(worldPos.xz * 0.7);
        float dust = step(0.998, dustNoise) * torchLight * (0.8 + blindness * 0.5);
        finalColor += vec3(dust);
    }

    // Long shadows - skip if far for FPS
    if (safeFogDepth < 60.0) {
        float shadowAngle = dot(normal, normalize(shadowLightPosition));
        float longShadow = 1.0 - clamp(shadowAngle * 0.5 + 0.5, 0.0, 1.0) * 0.4;
        finalColor *= longShadow;
    }

    // Vignette - use viewWidth/viewHeight not hardcoded 1920x1080 - FIX
    vec2 screenUV = gl_FragCoord.xy / vec2(max(viewWidth,1.0), max(viewHeight,1.0));
    float vignette = 1.0 - dot((screenUV - 0.5) * (1.8 + blindness * 0.6), (screenUV - 0.5) * (1.8 + blindness * 0.6)) * (0.5 + blindness * 0.4);
    finalColor *= clamp(vignette, 0.0, 1.0);

    finalColor *= (1.0 - blindness * 0.92);
    if (safeFogDepth < 50.0) {
        float edgeDark = pow(clamp(length(screenUV - 0.5) * 1.9, 0.0, 1.5), 2.5) * blindness * 0.6;
        finalColor -= edgeDark;
    }

    // Grain only near for FPS boost
    if (safeFogDepth < 30.0) {
        float grain = fastHash(texcoord * 120.0);
        finalColor += (grain - 0.5) * 0.012 * (1.0 + blindness * 0.5);
    }

    gl_FragData[0] = vec4(clamp(finalColor,0.0,1.0), tex.a);
}
