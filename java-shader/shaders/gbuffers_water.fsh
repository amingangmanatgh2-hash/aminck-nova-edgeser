#version 120
varying vec2 texcoord; varying vec4 color; varying vec4 lmcoord; varying vec3 worldPos;
uniform sampler2D texture; uniform sampler2D lightmap;
uniform float frameTimeCounter; uniform float blindness;
void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    vec2 lm = lmcoord.xy;
    float torch = pow(lm.x, 2.2);
    float sky = pow(lm.y, 1.5) * 0.5;
    vec3 waterCol = vec3(0.04, 0.07, 0.11); // dark horror water
    float wave = sin(texcoord.x*18.0 + frameTimeCounter*1.2) * 0.015 + sin(texcoord.y*12.0 + frameTimeCounter*0.9) * 0.015;
    vec3 finalCol = mix(tex.rgb * vec3(torch*1.2 + sky*0.5), waterCol, 0.68 + wave);
    finalCol *= (1.0 - blindness*0.5);
    gl_FragData[0] = vec4(finalCol, tex.a*0.75);
}
