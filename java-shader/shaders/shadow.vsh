#version 120
// Shadow vertex - long dramatic shadows for horror
varying vec2 texcoord;
varying vec4 color;
uniform mat4 shadowModelView;
uniform mat4 shadowProjection;
uniform float frameTimeCounter;

attribute vec4 mc_Entity;

void main() {
    texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
    color = gl_Color;
    vec4 pos = gl_Vertex;
    if (color.a < 0.99) { // foliage
        pos.x += sin(frameTimeCounter + pos.y) * 0.03;
    }
    gl_Position = shadowProjection * shadowModelView * pos;
    gl_Position.z -= 0.0003; // shadow bias to prevent acne
}
