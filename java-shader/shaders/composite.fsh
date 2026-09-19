#version 120
// Composite - Volumetric fog, god rays, all used

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

float volumetricFog(vec3 worldPos) {
    float dist = length(worldPos);
    float fog = 1.0 - exp(-dist * 0.018 * (0.7 + rainStrength * 0.5));
    fog *= 0.85 + sin(worldPos.y * 0.07 + frameTimeCounter * 0.12) * 0.15;
    return clamp(fog, 0.0, 1.0);
}

void main() {
    vec3 color = texture2D(colortex0, texcoord).rgb;
    float depth = texture2D(depthtex0, texcoord).r;

    // Reconstruct world pos
    vec4 ndc = vec4(texcoord * 2.0 - 1.0, depth * 2.0 - 1.0, 1.0);
    vec4 view = gbufferProjectionInverse * ndc;
    view /= view.w;
    vec4 world = gbufferModelViewInverse * view;

    float fog = volumetricFog(world.xyz);
    vec3 fogCol = fogColor * 0.8;
    fogCol = mix(fogCol, vec3(0.28, 0.03, 0.03), blindness * 0.6);
    fogCol = mix(fogCol, vec3(0.15, 0.02, 0.02), rainStrength * 0.4);

    // God rays from sun/moon
    vec2 sunScreen = sunPosition.xy * 0.008 + 0.5;
    float sunDist = length(texcoord - sunScreen);
    float godray = max(0.0, 1.0 - sunDist * 2.2) * 0.18 * (1.0 - rainStrength);
    godray *= max(0.0, dot(normalize(world.xyz), normalize(shadowLightPosition)));

    color = mix(color, fogCol, fog * 0.55);
    color += godray * vec3(1.0, 0.85, 0.6) * 0.35;

    // Chromatic aberration for fear - used
    float ca = blindness * 0.0015;
    vec3 colR = texture2D(colortex0, texcoord + vec2(ca, 0)).rgb;
    vec3 colB = texture2D(colortex0, texcoord - vec2(ca, 0)).rgb;
    color.r = mix(color.r, colR.r, blindness * 0.6);
    color.b = mix(color.b, colB.b, blindness * 0.6);

    // Film grain - subtle
    float grain = fract(sin(dot(texcoord * 120.0, vec2(12.9898, 78.233))) * 43758.5453);
    color += (grain - 0.5) * 0.015;

    gl_FragData[0] = vec4(color, 1.0);
}
