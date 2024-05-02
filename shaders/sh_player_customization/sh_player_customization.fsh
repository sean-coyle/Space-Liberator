//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 color_selection;

void main()
{

	vec4 color = texture2D( gm_BaseTexture, v_vTexcoord );
	
	color.rgb = color.rgb + color_selection;
	
    gl_FragColor = color;
}