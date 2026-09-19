#version 120
// Textured - signs, etc - real horror tint

varying vec2 texcoord;
varying vec4 color;
varying vec4 lmcoord;

uniform sampler2D texture;
uniform sampler2D lightmap;
uniform float frameTimeCounter;
uniform float blindness;
uniform float rainStrength;

void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    vec4 light = texture2D(lightmap, lmcoord.xy);

    float flicker = 1.0 + sin(frameTimeCounter * 4.0) * 0.03;
    light.r *= flicker;

    float gray = dot(tex.rgb, vec3(0.299, 0.587, 0.114));
    vec3 desat = mix(tex.rgb, vec3(gray), 0.4);

    vec3 finalCol = desat * light.rgb;
    finalCol *= (1.0 - blindness * 0.8);

    // Blood pulse when fear
    float pulse = sin(frameTimeCounter * 2.5) * 0.5 + 0.5;
    finalCol = mix(finalCol, finalCol * vec3(1.3, 0.2, 0.2), blindness * pulse * 0.4);

    gl_FragData[0] = vec4(finalCol, tex.a);
}
