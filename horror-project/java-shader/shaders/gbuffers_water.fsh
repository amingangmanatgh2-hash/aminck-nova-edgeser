#version 120
varying vec2 texcoord; varying vec4 color; uniform sampler2D texture; uniform sampler2D lightmap; varying vec4 lmcoord; uniform float frameTimeCounter;
void main(){
 vec4 tex=texture2D(texture,texcoord)*color;
 vec2 lm=lmcoord.xy; float torch=pow(lm.x,2.2); float sky=pow(lm.y,1.5)*0.5;
 vec3 waterCol=vec3(0.05,0.08,0.12); // dark horror water
 float wave=sin(texcoord.x*20.0+frameTimeCounter*1.5)*0.02;
 vec3 finalCol=mix(tex.rgb*vec3(torch*1.2+sky*0.5), waterCol, 0.7);
 gl_FragData[0]=vec4(finalCol, tex.a*0.7);
}
