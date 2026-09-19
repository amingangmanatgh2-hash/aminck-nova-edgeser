#version 120
varying vec2 texcoord; varying vec4 color; varying vec4 lmcoord; varying vec3 worldPos;
uniform mat4 gbufferModelView; uniform mat4 gbufferModelViewInverse; uniform vec3 cameraPosition;
void main() {
    texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
    lmcoord = gl_MultiTexCoord1;
    color = gl_Color;
    vec4 view = gbufferModelView * gl_Vertex;
    worldPos = (gbufferModelViewInverse * view).xyz + cameraPosition;
    gl_Position = ftransform();
}
