#version 120
varying vec2 texcoord; varying vec4 color; varying vec3 normal; varying vec4 lmcoord;
void main(){ texcoord=(gl_TextureMatrix[0]*gl_MultiTexCoord0).xy; lmcoord=gl_MultiTexCoord1; color=gl_Color; normal=normalize(gl_NormalMatrix*gl_Normal); gl_Position=ftransform(); }
