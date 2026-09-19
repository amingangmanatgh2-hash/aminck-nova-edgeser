#version 120
varying vec2 texcoord; varying vec4 color; varying vec4 lmcoord; uniform sampler2D texture; uniform sampler2D lightmap; uniform float blindness;
void main(){
 vec4 tex=texture2D(texture,texcoord)*color;
 vec4 light=texture2D(lightmap, lmcoord.xy);
 // Horror entity lighting - glowing eyes for shade
 float gray=dot(tex.rgb, vec3(0.299,0.587,0.114));
 vec3 col=mix(tex.rgb, vec3(gray), 0.3);
 col*=light.rgb*1.2;
 // Red eyes glow
 if (tex.r > 0.8 && tex.g < 0.3 && tex.b < 0.3) col+=vec3(0.5,0.0,0.0);
 col*= (1.0 - blindness*0.5);
 gl_FragData[0]=vec4(col, tex.a);
}
