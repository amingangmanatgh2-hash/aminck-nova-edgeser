#version 120
// Final - color grading, vignette, blood - all used

varying vec2 texcoord;
uniform sampler2D colortex0;
uniform float frameTimeCounter;
uniform float rainStrength;
uniform float blindness;

void main() {
    vec3 color = texture2D(colortex0, texcoord).rgb;

    // Cold grading
    color.r *= 0.92;
    color.g *= 0.96;
    color.b *= 1.06;

    // Desaturate
    float lum = dot(color, vec3(0.299, 0.587, 0.114));
    color = mix(color, vec3(lum), 0.22 + rainStrength * 0.12);

    // Contrast
    color = (color - 0.5) * 1.12 + 0.5;

    // Vignette strong
    vec2 uv = texcoord;
    float vign = 1.0 - dot((uv - 0.5)*1.9, (uv - 0.5)*1.9) * 0.45;
    color *= vign;

    // Blood red when fear
    float pulse = sin(frameTimeCounter * 3.2) * 0.5 + 0.5;
    vec3 blood = vec3(0.55, 0.06, 0.06);
    color = mix(color, color * blood * 1.4, blindness * pulse * 0.65);

    color = clamp(color, 0.0, 1.0);
    gl_FragColor = vec4(color, 1.0);
}
