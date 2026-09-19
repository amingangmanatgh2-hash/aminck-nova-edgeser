#version 120
// Composite - Volumetric fog, god rays, distortion, blood fog - all used
// Enhanced with real new effects: fear fog color shift, distortion, lens dirt

varying vec2 texcoord;
uniform sampler2D colortex0;
uniform sampler2D depthtex0;
uniform sampler2D shadow;
uniform float frameTimeCounter;
uniform float rainStrength;
uniform float blindness;
uniform vec3 fogColor;
uniform mat4 gbufferProjectionInverse;
uniform mat4 gbufferModelViewInverse;
uniform vec3 shadowLightPosition;
uniform vec3 sunPosition;

float hash(vec2 p) { return fract(sin(dot(p, vec2(12.9898, 78.233))) * 43758.5453); }

float volumetricFog(vec3 worldPos) {
    float dist = length(worldPos);
    float fog = 1.0 - exp(-dist * 0.018 * (0.7 + rainStrength * 0.5));
    fog *= 0.85 + sin(worldPos.y * 0.07 + frameTimeCounter * 0.12) * 0.15;
    // Extra fog when fear high
    fog *= 1.0 + blindness * 0.4;
    return clamp(fog, 0.0, 1.0);
}

void main() {
    vec2 uv = texcoord;

    // Subtle distortion for fear
    float fearDistort = blindness * 0.003;
    float time = frameTimeCounter * 0.6;
    uv += vec2(sin(uv.y * 7.0 + time * 1.5), cos(uv.x * 5.0 + time * 1.2)) * fearDistort;

    vec3 color = texture2D(colortex0, uv).rgb;
    float depth = texture2D(depthtex0, uv).r;

    // Reconstruct world pos
    vec4 ndc = vec4(uv * 2.0 - 1.0, depth * 2.0 - 1.0, 1.0);
    vec4 view = gbufferProjectionInverse * ndc;
    view /= view.w;
    vec4 world = gbufferModelViewInverse * view;

    float fog = volumetricFog(world.xyz);
    vec3 fogCol = fogColor * 0.8;
    // Blood fog when fear high
    fogCol = mix(fogCol, vec3(0.28, 0.03, 0.03), blindness * 0.6);
    fogCol = mix(fogCol, vec3(0.15, 0.02, 0.02), rainStrength * 0.4);
    // Extra cold fog at night
    fogCol = mix(fogCol, vec3(0.2, 0.25, 0.4), (1.0 - max(0.0, dot(normalize(world.xyz), normalize(shadowLightPosition)))) * 0.3);

    // God rays from sun/moon - enhanced
    vec2 sunScreen = sunPosition.xy * 0.008 + 0.5;
    float sunDist = length(uv - sunScreen);
    float godray = max(0.0, 1.0 - sunDist * 2.2) * 0.18 * (1.0 - rainStrength);
    godray *= max(0.0, dot(normalize(world.xyz), normalize(shadowLightPosition)));
    // Flicker god rays with fear
    godray *= 1.0 + sin(time * 2.0) * blindness * 0.3;

    color = mix(color, fogCol, fog * 0.55);
    color += godray * vec3(1.0, 0.85, 0.6) * 0.35;

    // Chromatic aberration for fear - used
    float ca = blindness * 0.0015;
    vec3 colR = texture2D(colortex0, uv + vec2(ca, 0)).rgb;
    vec3 colB = texture2D(colortex0, uv - vec2(ca, 0)).rgb;
    color.r = mix(color.r, colR.r, blindness * 0.6);
    color.b = mix(color.b, colB.b, blindness * 0.6);

    // Film grain + dirt lens
    float grain = hash(uv * 120.0 + time * 3.0);
    color += (grain - 0.5) * (0.015 + blindness * 0.01);

    // Lens dirt when fear
    float dirt = hash(uv * 8.0) * blindness * 0.08;
    color -= dirt;

    // Vignette for fog
    float vign = 1.0 - dot((uv - 0.5)*1.5, (uv - 0.5)*1.5) * 0.2;
    color *= vign;


    // Extra: when fear high, add dark fog at bottom of screen
    if (blindness > 0.6) {
        float bottomFog = smoothstep(0.0, 0.5, 1.0 - uv.y) * blindness * 0.4;
        vec3 darkFog = vec3(0.08, 0.02, 0.02);
        color = mix(color, darkFog, bottomFog);
    }
    // Extra: god rays intensity based on blindness (fear makes rays bloodier)
    if (blindness > 0.5) {
        float bloodyRay = godray * blindness * 0.5;
        color += bloodyRay * vec3(0.8, 0.1, 0.1) * 0.4;
    }

    gl_FragData[0] = vec4(color, 1.0);
}
