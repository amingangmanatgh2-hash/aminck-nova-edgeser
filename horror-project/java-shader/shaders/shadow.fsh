#version 120
varying vec2 texcoord;
varying vec4 color;
uniform sampler2D texture;

void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    if (tex.a < 0.5) discard;
    gl_FragData[0] = vec4(1.0);
}
