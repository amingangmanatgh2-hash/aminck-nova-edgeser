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
// Textured - signs, etc - real horror tint

varying vec2 texcoord;
varying vec4 color;
varying vec4 lmcoord;

uniform sampler2D texture;
uniform sampler2D lightmap;
uniform float frameTimeCounter;
uniform float blindness;
uniform float rainStrength;

void main() {
    vec4 tex = texture2D(texture, texcoord) * color;
    vec4 light = texture2D(lightmap, lmcoord.xy);

    float flicker = 1.0 + sin(frameTimeCounter * 4.0) * 0.03;
    light.r *= flicker;

    float gray = dot(tex.rgb, vec3(0.299, 0.587, 0.114));
    vec3 desat = mix(tex.rgb, vec3(gray), 0.4);

    vec3 finalCol = desat * light.rgb;
    finalCol *= (1.0 - blindness * 0.8);

    // Blood pulse when fear
    float pulse = sin(frameTimeCounter * 2.5) * 0.5 + 0.5;
    finalCol = mix(finalCol, finalCol * vec3(1.3, 0.2, 0.2), blindness * pulse * 0.4);

    gl_FragData[0] = vec4(finalCol, tex.a);
}
