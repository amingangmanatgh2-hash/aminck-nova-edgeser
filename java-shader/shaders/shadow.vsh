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
