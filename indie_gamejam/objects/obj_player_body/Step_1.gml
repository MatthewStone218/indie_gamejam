/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var _list = ds_list_create();
var num = instance_place_list(x,y,obj_player_body,_list,0);

for(var i = 0; i < num; i++)
{
	var dis = point_distance(_list[|i].x,_list[|i].y,x,y);
	var dir = point_direction(_list[|i].x,_list[|i].y,x,y);
	xspd += lengthdir_x(dis,dir)*0.001;
	yspd += lengthdir_y(dis,dir)*0.001;
}

ds_list_destroy(_list);

var _x_to_player = obj_player.x-x;
var _y_to_player = obj_player.y-y;

xspd += (_x_to_player-obj_player.size*x_to_player)/4;
yspd += (_y_to_player-obj_player.size*y_to_player)/4;

xspd /= 1.2;
yspd /= 1.2;






