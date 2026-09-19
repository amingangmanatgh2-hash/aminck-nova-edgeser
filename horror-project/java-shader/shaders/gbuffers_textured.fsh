#version 120
// Nova Horror - Textured fragment - God-tier horror lighting
varying vec2 texcoord;
varying vec4 color;
varying vec3 normal;
varying vec4 lmcoord;

uniform sampler2D texture;
uniform sampler2D lightmap;
uniform float frameTimeCounter;
uniform int worldTime;
uniform vec3 fogColor;
uniform float rainStrength;
uniform float nightVision;
uniform float blindness;

// Horror parameters
const vec3 HORROR_COLD_TINT = vec3(0.75, 0.8, 0.9);
const vec3 BLOOD_TINT = vec3(1.0, 0.15, 0.15);
const float DARKNESS_INTENSITY = 0.85;

void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    vec4 light = texture2D(lightmap, lmcoord.xy);

    // Desaturate for horror
    float gray = dot(tex.rgb, vec3(0.299, 0.587, 0.114));
    float desat = 0.4 + rainStrength * 0.2;
    vec3 desaturated = mix(tex.rgb, vec3(gray), desat);

    // Cold tint
    vec3 cold = desaturated * HORROR_COLD_TINT;
    
    // Torch flicker realism
    float torchFlicker = sin(frameTimeCounter * 3.0) * 0.05 + sin(frameTimeCounter * 7.0) * 0.03 + 1.0;
    light.r *= torchFlicker;
    light.g *= torchFlicker * 0.9;

    // Lightmap horror - reduce ambient, make torches more dramatic
    float torchLight = lmcoord.x;
    float skyLight = lmcoord.y;
    torchLight = pow(torchLight, 2.2); // more contrast
    skyLight = pow(skyLight, 1.5) * 0.6; // darker sky

    vec3 lighting = vec3(torchLight * 1.2 + skyLight * 0.4);
    lighting *= light.rgb;

    // Volumetric fog simulation
    float fogFactor = gl_FragCoord.z / gl_FragCoord.w;
    fogFactor = clamp(pow(fogFactor * 0.008, 1.5), 0.0, 1.0);
    vec3 fogCol = fogColor * (0.8 + sin(frameTimeCounter * 0.1) * 0.1);
    fogCol = mix(fogCol, BLOOD_TINT * 0.3, step(0.8, rainStrength) * 0.5); // blood fog when raining

    // Dust particles effect via noise
    float dust = fract(sin(dot(texcoord * 100.0, vec2(12.9898, 78.233))) * 43758.5453);
    dust = step(0.998, dust) * 0.3;

    vec3 finalColor = cold * lighting + dust;
    finalColor = mix(finalColor, fogCol, fogFactor * 0.7);

    // Vignette for fear
    vec2 uv = gl_FragCoord.xy / vec2(1920.0, 1080.0);
    float vignette = 1.0 - dot((uv - 0.5) * 2.0, (uv - 0.5) * 2.0) * 0.3;
    finalColor *= vignette;

    // Blindness horror
    finalColor *= (1.0 - blindness * 0.9);

    // Blood tint when low health would be handled in composite, but subtle here
    float bloodPulse = sin(frameTimeCounter * 2.0) * 0.5 + 0.5;
    // If player has fear effect, add red tint (we detect via blindness)
    finalColor = mix(finalColor, finalColor * BLOOD_TINT * 1.5, blindness * bloodPulse * 0.5);

    gl_FragData[0] = vec4(finalColor, tex.a);
    // For Iris: write to multiple buffers
    // gl_FragData[1] = vec4(normal * 0.5 + 0.5, 1.0);
}
