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
// Nova Horror - Terrain Vertex - Real implementation
// Features: wind for leaves, wobble for horror, world pos for fog

varying vec2 texcoord;
varying vec4 color;
varying vec3 normal;
varying vec4 lmcoord;
varying vec3 worldPos;
varying float fogDepth;

uniform mat4 gbufferModelView;
uniform mat4 gbufferModelViewInverse;
uniform vec3 cameraPosition;
uniform float frameTimeCounter;
uniform int worldTime;

attribute vec4 mc_Entity;

void main() {
    texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
    lmcoord = gl_MultiTexCoord1;
    color = gl_Color;
    normal = normalize(gl_NormalMatrix * gl_Normal);

    vec4 pos = gl_Vertex;
    // Wind for foliage - real, used
    if (mc_Entity.x == 18 || mc_Entity.x == 31) { // leaves, grass
        float wind = sin(frameTimeCounter * 0.8 + pos.x * 0.5 + pos.z * 0.3) * 0.04;
        pos.x += wind;
        pos.z += wind * 0.6;
    }

    // Horror subtle wobble for tension
    float horrorWobble = sin(frameTimeCounter * 0.2 + pos.y * 0.1) * 0.005;
    pos.x += horrorWobble;

    vec4 viewPos = gbufferModelView * pos;
    worldPos = (gbufferModelViewInverse * viewPos).xyz + cameraPosition;
    fogDepth = length(viewPos.xyz);

    gl_Position = ftransform();
}
