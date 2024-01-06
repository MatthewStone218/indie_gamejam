/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
//draw_self()


	draw_primitive_begin(pr_trianglelist);
	with(obj_player_body_vertex)
	{
		draw_vertex_color(x,y,c_green,0.5);
		draw_vertex_color(mine.x,mine.y,c_green,0.5);
		draw_vertex_color(other.x,other.y,c_green,0.5);
	}
	draw_primitive_end();

/*
var _x = x-500;
var _y = y-500;

if(!surface_exists(surf)){surf = surface_create(1000,1000)}

surface_set_target(surf);

draw_clear_alpha(c_white,0);
//shader_set(shd_player_body);
//texture_set_stage(shader_get_sampler_index(shd_player_body, "Screen_texture"), surface_get_texture(other.surf));

with(obj_player_body)
{
	draw_primitive_begin(pr_trianglelist);
	with(obj_player_body_vertex)
	{
		draw_vertex_color(x-_x,y-_y,c_green,0.5);
		draw_vertex_color(mine.x-_x,mine.y-_y,c_green,0.5);
		draw_vertex_color(other.x-_x,other.y-_y,c_green,0.5);
	}
	draw_primitive_end();
}

//shader_reset();
surface_reset_target();

draw_surface(surf,_x,_y);













