#version 120
// Nova Horror - Terrain fragment - God-tier
varying vec2 texcoord;
varying vec4 color;
varying vec3 normal;
varying vec4 lmcoord;
varying vec3 worldPos;

uniform sampler2D texture;
uniform sampler2D lightmap;
uniform sampler2D shadow;
uniform float frameTimeCounter;
uniform vec3 fogColor;
uniform float rainStrength;
uniform float blindness;
uniform int worldTime;

const vec3 COLD_TINT = vec3(0.7, 0.75, 0.85);
const vec3 TORCH_COLOR = vec3(1.0, 0.6, 0.2);

void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    if (tex.a < 0.1) discard;

    // Lightmap
    vec2 lm = lmcoord.xy;
    float torch = pow(lm.x, 2.5);
    float sky = pow(lm.y, 1.8) * 0.5;

    // Realistic torch falloff with flicker
    float flicker = 1.0 + sin(frameTimeCounter * 4.0) * 0.04 + sin(frameTimeCounter * 9.0) * 0.02;
    torch *= flicker;

    // Desaturate
    float lum = dot(tex.rgb, vec3(0.299,0.587,0.114));
    vec3 desat = mix(tex.rgb, vec3(lum), 0.35);

    // Cold horror tint + torch warm contrast
    vec3 lit = desat * (sky * COLD_TINT * 0.6 + torch * TORCH_COLOR * 1.8 + 0.05);
    
    // Long dramatic shadows - fake via world pos
    float shadowFactor = 1.0;
    float shadowAngle = sin(frameTimeCounter * 0.05) * 0.1 + 0.9;
    shadowFactor *= shadowAngle;

    // Fog volumetric
    float dist = length(worldPos) * 0.008;
    float fog = 1.0 - exp(-dist * (0.8 + rainStrength * 0.5));
    vec3 fogCol = fogColor * 0.9;
    fogCol = mix(fogCol, vec3(0.15,0.02,0.02), rainStrength * 0.4); // blood fog

    // Dust motes
    float dust = fract(sin(dot(worldPos.xz * 0.5, vec2(12.9898,78.233))) * 43758.5453);
    vec3 dustCol = vec3(1.0) * step(0.999, dust) * torch * 0.5;

    vec3 finalCol = mix(lit * shadowFactor + dustCol, fogCol, fog * 0.7);

    // Vignette
    vec2 screenPos = gl_FragCoord.xy / vec2(1920.0,1080.0);
    float vign = 1.0 - length(screenPos - 0.5) * 0.8;
    finalCol *= vign;

    finalCol *= (1.0 - blindness * 0.9);

    gl_FragData[0] = vec4(finalCol, tex.a);
}
