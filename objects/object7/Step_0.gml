if sel = 1{
z--;
if z<0{
image_alpha -= 0.008;
if image_alpha < 0{
	room_goto(Room02);
}
}
}else{
	/*
if keyboard_check_pressed(ord("S")){
server = network_create_server(network_socket_tcp,6666,2);
if server < 0 {
	show_message("could not create server");
	game_end();
}
is = true;
sel = 1
nad = 0;
}
if keyboard_check_pressed(ord("C")){
server = network_create_socket(network_socket_tcp);
ii = network_connect(server,get_string("IP","112.166.53.23"),6666);
if ii < 0 {
	show_message("could not connect to server");
	game_end();
}

is = false;
sel = 1;
nad = 0;
}
*/
if keyboard_check_pressed(ord("X")){
sel = 1;
nad = 1;
}
}