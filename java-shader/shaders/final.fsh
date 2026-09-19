#version 120
// Final - FPS BOOST - LOD, clamped, stable Iris/Sodium, blood lens, edge darkness
// Fixed: no hardcoded resolution, safe sampling, early exit

varying vec2 texcoord;
uniform sampler2D colortex0;
uniform float frameTimeCounter;
uniform float blindness;
uniform float rainStrength;
uniform float viewWidth;
uniform float viewHeight;

float fastHash(vec2 p) { return fract(sin(dot(p, vec2(12.9898, 78.233))) * 43758.5453); }

void main() {
    vec2 uv = texcoord;
    vec2 safeUV = clamp(uv, 0.001, 0.999);

    // Fear warp - only near center and when fear >0.1 for FPS
    vec2 distortedUV = safeUV;
    if (blindness > 0.1) {
        float time = frameTimeCounter * 0.8;
        float warp = blindness * 0.005;
        if (length(safeUV - 0.5) < 0.7) {
            distortedUV += vec2(sin(safeUV.y * 10.0 + time) * warp, cos(safeUV.x * 8.0 + time) * warp);
            distortedUV = clamp(distortedUV, 0.001, 0.999);
        }
    }

    // Sanity warp - only high fear
    if (blindness > 0.6) {
        float sanityWarp = (blindness - 0.6) * 0.008;
        distortedUV += vec2(sin(distortedUV.y * 15.0 + frameTimeCounter * 2.0) * sanityWarp, 0);
        distortedUV = clamp(distortedUV, 0.001, 0.999);
    }

    vec3 color = texture2D(colortex0, distortedUV).rgb;

    // Chromatic aberration - only when fear and near center
    if (blindness > 0.2 && length(safeUV - 0.5) < 0.75) {
        float ca = blindness * 0.0012;
        vec2 safeR = clamp(distortedUV + vec2(ca, 0), 0.001, 0.999);
        vec2 safeB = clamp(distortedUV - vec2(ca, 0), 0.001, 0.999);
        vec3 colR = texture2D(colortex0, safeR).rgb;
        vec3 colB = texture2D(colortex0, safeB).rgb;
        color.r = mix(color.r, colR.r, blindness * 0.5);
        color.b = mix(color.b, colB.b, blindness * 0.5);
    }

    // Blood splatter on lens - only when fear >0.4 for FPS
    if (blindness > 0.4) {
        float bloodNoise = fastHash(safeUV * 8.0);
        float splatter = step(0.985, bloodNoise) * blindness * 0.6;
        // Drip effect
        float drip = sin(safeUV.x * 20.0) * 0.5 + 0.5;
        float dripLine = smoothstep(0.0, 0.02, abs(safeUV.y - drip * 0.3)) * blindness * 0.2;
        color = mix(color, vec3(0.3, 0.02, 0.02), splatter);
        color -= dripLine * vec3(0.2, 0.01, 0.01);
    }

    // Vignette - use viewWidth/viewHeight FIX
    vec2 screenUV = gl_FragCoord.xy / vec2(max(viewWidth,1.0), max(viewHeight,1.0));
    float vignette = 1.0 - dot((screenUV - 0.5) * (1.8 + blindness * 0.6), (screenUV - 0.5) * (1.8 + blindness * 0.6)) * (0.5 + blindness * 0.4);
    color *= clamp(vignette, 0.0, 1.0);

    // Edge darkness - only when fear
    if (blindness > 0.2) {
        float edgeDark = pow(clamp(length(screenUV - 0.5) * 2.2, 0.0, 1.5), 2.0) * blindness * 0.5;
        color -= edgeDark;
    }

    // Extra heavy darkness when blindness >0.7
    if (blindness > 0.7) {
        float edge = pow(clamp(length(screenUV - 0.5) * 2.2, 0.0, 1.5), 3.0) * (blindness - 0.7) * 2.5;
        color -= edge;
        float redEdge = edge * 0.5;
        color.r += redEdge * 0.3;
        // Intense grain only near
        if (length(screenUV - 0.5) < 0.6) {
            float intenseGrain = fastHash(screenUV * 200.0 + frameTimeCounter * 10.0);
            color += (intenseGrain - 0.5) * 0.02 * blindness;
        }
    }

    // Film grain - LOD
    if (length(screenUV - 0.5) < 0.8) {
        float grain = fastHash(safeUV * 120.0 + frameTimeCounter * 5.0);
        color += (grain - 0.5) * 0.012 * (1.0 + blindness * 0.5);
    }

    // Rain effect - only when raining
    if (rainStrength > 0.1) {
        float rainLine = fastHash(vec2(safeUV.x * 40.0, safeUV.y * 10.0 + frameTimeCounter * 5.0));
        float rain = step(0.98, rainLine) * rainStrength * 0.3;
        color += vec3(rain * 0.6);
    }

    gl_FragColor = vec4(clamp(color,0.0,1.0), 1.0);
}
