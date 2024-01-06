/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

x += (obj_player.x-x)/5;
y += (obj_player.y-y)/5;
image_xscale /= 1.05;
image_yscale /= 1.05;
if(image_xscale < 0.01){instance_destroy();}

image_angle += angle_speed;
angle_speed += angle_acc;














