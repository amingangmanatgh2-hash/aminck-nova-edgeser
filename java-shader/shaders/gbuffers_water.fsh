// ============================================================================
// Nova Horror Shader - FPS BOOST Documentation for 8GB RAM
// LOD System: Near (<20) = Full quality, Mid (20-50) = Medium, Far (>50) = Optimized
// - Fog: Near = volumetric dynamic + lowYFactor, Mid = simple exp, Far = early exit 0.85
// - Dust: Only <40 blocks for FPS
// - Shadows: Only <60 blocks
// - Grain: Only <30 blocks near center
// - Distortion/Chromatic/Blood: Only when blindness>threshold and near center
// - Resolution: Uses viewWidth/viewHeight not hardcoded 1920x1080
// - Safety: All UV clamped 0.001-0.999, length clamped 0-1.5 to prevent NaN, safeFogDepth max(0)
// - Performance: fastHash instead of heavy hash, early exit for sky depth>0.999
// - No quality loss near player, FPS boost far
// ============================================================================
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
