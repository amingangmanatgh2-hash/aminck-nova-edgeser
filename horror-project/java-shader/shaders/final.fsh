#version 120
// Nova Horror - Final - color grading, cold, blood
varying vec2 texcoord;
uniform sampler2D colortex0;
uniform float frameTimeCounter;
uniform float rainStrength;
uniform float blindness;

void main() {
    vec3 color = texture2D(colortex0, texcoord).rgb;

    // Cold grading
    color.r *= 0.9;
    color.g *= 0.95;
    color.b *= 1.05;

    // Desaturate slightly
    float lum = dot(color, vec3(0.299,0.587,0.114));
    color = mix(color, vec3(lum), 0.2 + rainStrength * 0.1);

    // Contrast
    color = (color - 0.5) * 1.15 + 0.5;

    // Vignette strong
    vec2 uv = texcoord;
    float vign = 1.0 - dot((uv - 0.5)*2.0, (uv - 0.5)*2.0) * 0.4;
    color *= vign;

    // Blood red when blindness/fear high
    float pulse = sin(frameTimeCounter * 3.0) * 0.5 + 0.5;
    vec3 blood = vec3(0.6, 0.05, 0.05);
    color = mix(color, color * blood * 1.5, blindness * pulse * 0.7);

    // Darkness edges
    color *= 0.9 + 0.1 * vign;

    // Clamp
    color = clamp(color, 0.0, 1.0);

    gl_FragColor = vec4(color, 1.0);
}
