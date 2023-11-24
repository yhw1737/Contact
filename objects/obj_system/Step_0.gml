x = (Obj_player1.x + Obj_player2.x) / 2;
y = (Obj_player1.y + Obj_player2.y) / 2;
if keyboard_check_pressed(ord("I")){
	m_x = mouse_x;
	m_y = mouse_y;
}
if keyboard_check(ord("I")){
	if window_get_fullscreen() == false
	window_set_position(mouse_x+window_get_x()-m_x,mouse_y+window_get_y()-m_y);
}
if keyboard_check_pressed(ord("F")){
	if window_get_fullscreen() == false
	window_set_fullscreen(true);
	else
	window_set_fullscreen(false);
}