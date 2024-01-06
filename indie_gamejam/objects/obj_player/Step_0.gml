/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE
xspd += (keyboard_check(vk_right)-keyboard_check(vk_left))*5*size;
xspd /= 1.3;

if(keyboard_check_pressed(vk_up) and place_meeting(x,y+1,obj_sol)){yspd -= 20*(sqrt(size));}

yspd += 1;

var _xspd = xspd;
var _yspd = yspd;

var move_sep = 1;

while(1)
{
	if(abs(_xspd) <= move_sep)
	{
		if(!place_meeting(x+_xspd,y,obj_sol)){x += _xspd; _xspd = 0;}
	}
	
	if(abs(_yspd) <= move_sep)
	{
		if(!place_meeting(x,y+_yspd,obj_sol)){y += _yspd; _yspd = 0;}
	}
	
	if(_xspd == 0 and _yspd == 0){break;}
	
	if(place_meeting(x+move_sep*sign(_xspd),y,obj_sol))
	{
		var entity = instance_place(x+move_sep*sign(_xspd),y,obj_entity);
		if(instance_exists(entity) and entity.size < size)
		{
			eat(entity);
			x += move_sep*sign(_xspd);
			_xspd -=  move_sep*sign(_xspd);
		}
		else
		{
			_xspd = 0;
		}
	}
	else
	{	
		x += move_sep*sign(_xspd);
		_xspd -=  move_sep*sign(_xspd);
	}
	
	if(place_meeting(x,y+move_sep*sign(_yspd),obj_sol))
	{
		var entity = instance_place(x,y+move_sep*sign(_yspd),obj_entity);
		if(instance_exists(entity) and entity.size < size)
		{
			eat(entity);
			y += move_sep*sign(_yspd);
			_yspd -=  move_sep*sign(_yspd);
		}
		else
		{
			_yspd = 0;
		}
	}
	else
	{
		y += move_sep*sign(_yspd);
		_yspd -=  move_sep*sign(_yspd);
	}
}

if(place_meeting(x,y+move_sep,obj_sol)){yspd = 0;}
if(place_meeting(x+move_sep,y,obj_sol) or place_meeting(x-move_sep,y,obj_sol)){xspd *= -0.2;}
if(place_meeting(x,y-move_sep,obj_sol)){yspd *= -0.6;}












