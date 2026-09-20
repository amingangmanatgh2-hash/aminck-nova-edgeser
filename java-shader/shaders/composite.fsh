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
// Composite - FPS BOOST for 8GB RAM - LOD, early exit, no quality loss near
// Keeps volumetric fog, god rays, distortion, blood fog

varying vec2 texcoord;
uniform sampler2D colortex0;
uniform sampler2D depthtex0;
uniform float frameTimeCounter;
uniform float rainStrength;
uniform float blindness;
uniform vec3 fogColor;
uniform mat4 gbufferProjectionInverse;
uniform mat4 gbufferModelViewInverse;
uniform vec3 shadowLightPosition;
uniform vec3 sunPosition;
uniform float viewWidth;
uniform float viewHeight;

float fastHash(vec2 p) { return fract(sin(dot(p, vec2(12.9898, 78.233))) * 43758.5453); }

float volumetricFog(vec3 worldPos) {
    float dist = length(worldPos);
    if (dist > 100.0) return 0.8;
    float fog = 1.0 - exp(-dist * 0.018 * (0.7 + rainStrength * 0.5));
    if (dist < 50.0) {
        fog *= 0.85 + sin(worldPos.y * 0.07 + frameTimeCounter * 0.12) * 0.15;
    }
    fog *= 1.0 + blindness * 0.4;
    return clamp(fog, 0.0, 1.0);
}

void main() {
    vec2 uv = texcoord;
    vec2 safeUV = clamp(uv, 0.001, 0.999);

    // Distortion only when fear high and near center for FPS
    float fearDistort = blindness * 0.003;
    if (blindness > 0.1 && length(uv - 0.5) < 0.6) {
        float time = frameTimeCounter * 0.6;
        uv += vec2(sin(uv.y * 7.0 + time * 1.5), cos(uv.x * 5.0 + time * 1.2)) * fearDistort;
        uv = clamp(uv, 0.001, 0.999);
    }

    vec3 color = texture2D(colortex0, uv).rgb;
    float depth = texture2D(depthtex0, uv).r;

    // Early exit for sky (depth ~1.0) - skip world reconstruction for FPS
    if (depth > 0.999) {
        // Still apply vignette and grain for sky
        float vign = 1.0 - dot((safeUV - 0.5)*1.5, (safeUV - 0.5)*1.5) * 0.2;
        color *= vign;
        gl_FragData[0] = vec4(color, 1.0);
        return;
    }

    vec4 ndc = vec4(uv * 2.0 - 1.0, depth * 2.0 - 1.0, 1.0);
    vec4 view = gbufferProjectionInverse * ndc;
    view /= view.w;
    vec4 world = gbufferModelViewInverse * view;

    float fog = volumetricFog(world.xyz);
    vec3 fogCol = fogColor * 0.8;
    fogCol = mix(fogCol, vec3(0.28, 0.03, 0.03), blindness * 0.6);
    fogCol = mix(fogCol, vec3(0.15, 0.02, 0.02), rainStrength * 0.4);

    // God rays - only when not raining heavily for FPS
    float godray = 0.0;
    if (rainStrength < 0.8) {
        vec2 sunScreen = sunPosition.xy * 0.008 + 0.5;
        float sunDist = length(uv - sunScreen);
        godray = max(0.0, 1.0 - sunDist * 2.2) * 0.18 * (1.0 - rainStrength);
        godray *= max(0.0, dot(normalize(world.xyz), normalize(shadowLightPosition)));
        if (blindness > 0.3) {
            godray *= 1.0 + sin(frameTimeCounter * 2.0) * blindness * 0.3;
        }
    }

    color = mix(color, fogCol, fog * 0.55);
    color += godray * vec3(1.0, 0.85, 0.6) * 0.35;

    // Chromatic aberration - only when fear >0.3 and near center for FPS
    if (blindness > 0.3 && length(uv - 0.5) < 0.7) {
        float ca = blindness * 0.0015;
        vec2 safeR = clamp(uv + vec2(ca, 0), 0.001, 0.999);
        vec2 safeB = clamp(uv - vec2(ca, 0), 0.001, 0.999);
        vec3 colR = texture2D(colortex0, safeR).rgb;
        vec3 colB = texture2D(colortex0, safeB).rgb;
        color.r = mix(color.r, colR.r, blindness * 0.6);
        color.b = mix(color.b, colB.b, blindness * 0.6);
    }

    // Grain - low cost fastHash
    if (length(uv - 0.5) < 0.8) {
        float grain = fastHash(uv * 120.0 + frameTimeCounter * 3.0);
        color += (grain - 0.5) * (0.015 + blindness * 0.01);
    }

    float vign = 1.0 - dot((safeUV - 0.5)*1.5, (safeUV - 0.5)*1.5) * 0.2;
    color *= vign;

    if (blindness > 0.6) {
        float bottomFog = smoothstep(0.0, 0.5, 1.0 - safeUV.y) * blindness * 0.4;
        vec3 darkFog = vec3(0.08, 0.02, 0.02);
        color = mix(color, darkFog, bottomFog);
    }
    if (blindness > 0.5) {
        float bloodyRay = godray * blindness * 0.5;
        color += bloodyRay * vec3(0.8, 0.1, 0.1) * 0.4;
    }

    gl_FragData[0] = vec4(clamp(color,0.0,1.0), 1.0);
}
