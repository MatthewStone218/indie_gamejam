/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
//show_debug_log(1)
size = 1;

xspd = 0;
yspd = 0;

surf = -1;

global.player_body_vertex[0].mine = global.player_body_vertex[array_length(global.player_body_vertex)-1];

function eat(entity)
{
	var _size = entity.size;
	instance_create_depth(entity.x,entity.y,depth+1,obj_ef_be_ate,{sprite_index : entity.sprite_index});
	instance_destroy(entity);
	
	size += _size/10;
	image_xscale += _size/10;
	image_yscale += _size/10;
	grow();
}

function grow()
{
	var a = 1;
	var len = 0;
	while(a)
	{
		for(var i = 90; i < 360+90; i++)
		{
			if(!place_meeting(x+lengthdir_x(len,i),y+lengthdir_y(len,i),obj_sol))
			{
				a = 0;
				x += lengthdir_x(len,i);
				y += lengthdir_y(len,i);
				break;
			}
		}
		len += 50*obj_player.size;
	}
	
	len = -1;
}