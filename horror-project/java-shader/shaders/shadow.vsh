#version 120
// Nova Horror - Shadow vertex - long dramatic shadows
varying vec2 texcoord;
varying vec4 color;

uniform mat4 shadowModelView;
uniform mat4 shadowProjection;
uniform vec3 shadowLightPosition;
uniform float frameTimeCounter;

void main() {
    texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
    color = gl_Color;

    vec4 pos = gl_Vertex;
    // Wind for leaves
    if (gl_Color.a < 1.0) {
        pos.x += sin(frameTimeCounter + pos.y) * 0.05;
    }

    gl_Position = shadowProjection * shadowModelView * pos;
    gl_Position.z -= 0.0005; // bias
}
