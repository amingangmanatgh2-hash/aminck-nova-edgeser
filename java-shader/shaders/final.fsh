#version 120
// Final - color grading, vignette, blood, distortion, lens blood - all used
// Enhanced with real horror effects: screen distortion when fear high, blood splatter, sanity warp

varying vec2 texcoord;
uniform sampler2D colortex0;
uniform float frameTimeCounter;
uniform float rainStrength;
uniform float blindness;

float hash(vec2 p) {
    return fract(sin(dot(p, vec2(12.9898, 78.233))) * 43758.5453);
}

float noise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    f = f*f*(3.0-2.0*f);
    float a = hash(i);
    float b = hash(i+vec2(1.0,0.0));
    float c = hash(i+vec2(0.0,1.0));
    float d = hash(i+vec2(1.0,1.0));
    return mix(mix(a,b,f.x), mix(c,d,f.x), f.y);
}

void main() {
    vec2 uv = texcoord;

    // Screen distortion when fear high (blindness) - real warp
    float distortionStrength = blindness * 0.015;
    float time = frameTimeCounter * 0.8;
    float warpX = sin(uv.y * 8.0 + time * 2.3) * distortionStrength;
    float warpY = cos(uv.x * 6.0 + time * 1.7) * distortionStrength * 0.6;
    vec2 distortedUV = uv + vec2(warpX, warpY);

    // Extra sanity warp when very high fear
    float sanityWarp = blindness * blindness * 0.02;
    distortedUV += vec2(sin(distortedUV.y * 12.0 + time * 3.0), cos(distortedUV.x * 10.0 + time * 2.5)) * sanityWarp;

    vec3 color = texture2D(colortex0, distortedUV).rgb;

    // Cold grading - used
    color.r *= 0.92;
    color.g *= 0.96;
    color.b *= 1.06;

    // Desaturate based on rain + fear
    float lum = dot(color, vec3(0.299, 0.587, 0.114));
    color = mix(color, vec3(lum), 0.22 + rainStrength * 0.12 + blindness * 0.15);

    // Contrast boost
    color = (color - 0.5) * 1.12 + 0.5;

    // Vignette strong - dynamic with fear
    float vign = 1.0 - dot((uv - 0.5)*1.9, (uv - 0.5)*1.9) * (0.45 + blindness * 0.3);
    color *= vign;

    // Blood red when fear - pulse
    float pulse = sin(frameTimeCounter * 3.2) * 0.5 + 0.5;
    vec3 blood = vec3(0.55, 0.06, 0.06);
    color = mix(color, color * blood * 1.4, blindness * pulse * 0.65);

    // Blood lens splatter - procedural blood drops on lens
    float bloodNoise = noise(uv * 18.0 + time * 0.1);
    float bloodSplatter = smoothstep(0.85, 0.95, bloodNoise) * blindness * 0.7;
    // Add drip effect
    float drip = sin(uv.x * 25.0) * 0.5 + 0.5;
    drip = pow(drip, 8.0) * step(0.3, uv.y) * blindness * 0.4;
    vec3 bloodLens = vec3(0.6, 0.05, 0.05) * (bloodSplatter + drip);
    color = mix(color, bloodLens, (bloodSplatter + drip) * 0.6);
    color += bloodLens * 0.3;

    // Chromatic aberration increase with fear
    float ca = blindness * 0.002;
    vec3 colR = texture2D(colortex0, distortedUV + vec2(ca, 0)).rgb;
    vec3 colB = texture2D(colortex0, distortedUV - vec2(ca, 0)).rgb;
    color.r = mix(color.r, colR.r, blindness * 0.5);
    color.b = mix(color.b, colB.b, blindness * 0.5);

    // Film grain + fear grain
    float grain = hash(uv * 120.0 + time * 5.0);
    color += (grain - 0.5) * (0.015 + blindness * 0.02);

    // Darken edges for sanity loss
    float edgeDark = pow(length(uv - 0.5) * 1.8, 2.0) * blindness * 0.5;
    color -= edgeDark;

    color = clamp(color, 0.0, 1.0);
    gl_FragColor = vec4(color, 1.0);
}
