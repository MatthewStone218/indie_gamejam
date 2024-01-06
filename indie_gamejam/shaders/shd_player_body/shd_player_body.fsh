//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D Screen_texture;

void main()
{
	vec4 BackColor = texture2D( Screen_texture, vec2(gl_FragCoord.x,gl_FragCoord.y) );
	if(BackColor == vec4(1.0,1.0,1.0,0.0))
	{
		gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	}
	else
	{
		gl_FragColor = v_vColour * vec4(1.0,1.0,1.0,0.0);
		gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	}
}
