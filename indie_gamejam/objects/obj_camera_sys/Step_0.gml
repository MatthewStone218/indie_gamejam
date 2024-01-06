/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var _x = camera_get_view_x(view_camera)+(target_x-(camera_get_view_width(view_camera)/2)-camera_get_view_x(view_camera))/4;
var _y = camera_get_view_y(view_camera)+(target_y-(camera_get_view_height(view_camera)/2)-camera_get_view_y(view_camera))/4;

camera_set_view_pos(view_camera,_x,_y)


var _size = (camera_get_view_width(view_camera)/1920)+(target_size-(camera_get_view_width(view_camera)/1920))/4

camera_set_view_size(view_camera,1920*_size,1080*_size);














