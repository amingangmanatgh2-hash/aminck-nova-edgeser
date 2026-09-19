#version 120
varying vec2 texcoord; varying vec4 color; varying vec4 lmcoord; varying vec3 normal;
uniform sampler2D texture; uniform sampler2D lightmap;
uniform float blindness; uniform float frameTimeCounter;
void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    vec4 light = texture2D(lightmap, lmcoord.xy);
    float gray = dot(tex.rgb, vec3(0.299,0.587,0.114));
    vec3 col = mix(tex.rgb, vec3(gray), 0.3);
    col *= light.rgb * 1.25;
    // Red eyes glow for horror entities - real check
    if (tex.r > 0.75 && tex.g < 0.35 && tex.b < 0.35) {
        float glow = sin(frameTimeCounter*5.0)*0.3 + 0.7;
        col += vec3(0.6, 0.05, 0.05) * glow;
    }
    col *= (1.0 - blindness*0.4);
    gl_FragData[0] = vec4(col, tex.a);
}
