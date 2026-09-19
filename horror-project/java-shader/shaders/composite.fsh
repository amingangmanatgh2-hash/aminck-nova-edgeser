#version 120
// Nova Horror - Composite - Volumetric fog, god rays, blood moon
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
uniform int worldTime;

float volumetricFog(vec3 pos) {
    float fog = exp(-length(pos) * 0.02);
    fog *= 0.5 + sin(pos.y * 0.1 + frameTimeCounter * 0.2) * 0.2;
    return fog;
}

void main() {
    vec3 color = texture2D(colortex0, texcoord).rgb;
    float depth = texture2D(depthtex0, texcoord).r;

    // Reconstruct world pos
    vec4 ndc = vec4(texcoord * 2.0 - 1.0, depth * 2.0 - 1.0, 1.0);
    vec4 view = gbufferProjectionInverse * ndc;
    view /= view.w;
    vec4 world = gbufferModelViewInverse * view;

    // Volumetric fog
    float fogFactor = volumetricFog(world.xyz);
    fogFactor *= 0.6 + rainStrength * 0.4;

    vec3 fogCol = fogColor * 0.8;
    // Blood tint when fear high (blindness)
    fogCol = mix(fogCol, vec3(0.3, 0.02, 0.02), blindness * 0.6);

    // God rays fake - from sun position
    vec2 sunScreen = sunPosition.xy * 0.01 + 0.5;
    float distSun = length(texcoord - sunScreen);
    float godray = max(0.0, 1.0 - distSun * 2.0) * 0.15 * (1.0 - rainStrength);
    godray *= max(0.0, dot(normalize(world.xyz), normalize(shadowLightPosition)));

    color = mix(color, fogCol, fogFactor * 0.5);
    color += godray * vec3(1.0, 0.8, 0.6) * 0.3;

    // Chromatic aberration subtle for fear
    float ca = blindness * 0.002;
    float r = texture2D(colortex0, texcoord + vec2(ca,0)).r;
    float b = texture2D(colortex0, texcoord - vec2(ca,0)).b;
    color.r = mix(color.r, r, blindness * 0.5);
    color.b = mix(color.b, b, blindness * 0.5);

    // Film grain
    float grain = fract(sin(dot(texcoord * 100.0, vec2(12.9898,78.233))) * 43758.5453);
    color += (grain - 0.5) * 0.02;

    gl_FragData[0] = vec4(color, 1.0);
}
