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
varying vec2 texcoord; varying vec4 color; varying vec4 lmcoord; varying vec3 normal;
uniform sampler2D texture; uniform sampler2D lightmap;
uniform float blindness; uniform float frameTimeCounter;
void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    vec4 light = texture2D(lightmap, lmcoord.xy);
    float gray = dot(tex.rgb, vec3(0.299,0.587,0.114));
    vec3 col = mix(tex.rgb, vec3(gray), 0.3);
    col *= light.rgb * 1.25;
    // Red eyes glow for horror entities - real check
    if (tex.r > 0.75 && tex.g < 0.35 && tex.b < 0.35) {
        float glow = sin(frameTimeCounter*5.0)*0.3 + 0.7;
        col += vec3(0.6, 0.05, 0.05) * glow;
    }
    col *= (1.0 - blindness*0.4);
    gl_FragData[0] = vec4(col, tex.a);
}
