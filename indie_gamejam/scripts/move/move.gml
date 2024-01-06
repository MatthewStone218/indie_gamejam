// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function move(_xspd,_yspd,move_sep)
{
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
			_xspd = 0;
		}
		else
		{	
			x += move_sep*sign(_xspd);
			_xspd -=  move_sep*sign(_xspd);
		}
	
		if(place_meeting(x,y+move_sep*sign(_yspd),obj_sol))
		{
			_yspd = 0;
		}
		else
		{
			y += move_sep*sign(_yspd);
			_yspd -=  move_sep*sign(_yspd);
		}
	}
}