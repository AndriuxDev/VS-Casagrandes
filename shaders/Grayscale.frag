//SHADERTOY PORT FIX
#pragma header
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
#define iChannel0 bitmap
#define iChannel1 bitmap
#define iChannel2 bitmap
#define iChannel3 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main
#define iChannelResolution bitmap
//SHADERTOY PORT FIX



void main()
{
    float a = 0.5;
	vec2 uv = fragCoord.xy / iResolution.xy;
	fragColor = texture(iChannel0, uv) * a + texture(iChannel1, uv) * (0.7-a);
    fragColor.rgb = vec3(dot(fragColor.rgb, fragColor.rgb));
}