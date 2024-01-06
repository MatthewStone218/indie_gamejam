/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
LIVE

var move_sep = 1;
//var ratio = point_distance(0,0,xspd,yspd)/50;
var ratio = 1;
//move_and_collide(xspd*(1-ratio),yspd*(1-ratio),obj_sol,move_sep);
x += xspd*(ratio);
y += yspd*(ratio);


if(place_meeting(x,y+move_sep,obj_sol)){yspd = 0;}
if(place_meeting(x+move_sep,y,obj_sol) or place_meeting(x-move_sep,y,obj_sol)){xspd *= -0.2;}
if(place_meeting(x,y-move_sep,obj_sol)){yspd *= -0.6;}


image_xscale = obj_player.size;
image_yscale = obj_player.size;













