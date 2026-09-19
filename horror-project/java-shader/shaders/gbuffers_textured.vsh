#version 120
// Nova Horror - Textured vertex shader
// God-tier horror: dramatic shadows, flickering

varying vec2 texcoord;
varying vec4 color;
varying vec3 normal;
varying vec4 lmcoord;

attribute vec4 mc_Entity;

uniform mat4 gbufferModelView;
uniform mat4 gbufferModelViewInverse;
uniform vec3 shadowLightPosition;
uniform float frameTimeCounter;
uniform int worldTime;

void main() {
    texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
    lmcoord = gl_MultiTexCoord1;
    color = gl_Color;
    normal = normalize(gl_NormalMatrix * gl_Normal);

    // Slight vertex wobble for horror atmosphere (subtle)
    vec4 pos = gl_Vertex;
    float fearWobble = sin(frameTimeCounter * 0.3 + pos.x * 0.1) * 0.01;
    if (mc_Entity.x == 18) { // leaves
        pos.x += fearWobble;
        pos.z += fearWobble * 0.5;
    }

    gl_Position = ftransform();
}
