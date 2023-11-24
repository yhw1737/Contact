if (a && jj = 0){
	phy_rotation-=1;
	physics_apply_impulse(x+1,y,-6,0);
}
if (d && jj = 0){
	phy_rotation+=1;
	physics_apply_impulse(x-1,y,6,0);
}
phy_speed_x = clamp(phy_speed_x,-3,3);
if is == false && nad = 0{
	if (keyboard_check_pressed(ord("A"))){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.A);
		network_send_packet(0,buffer,buffer_get_size(buffer));
		a = 1;
	}
	if (keyboard_check_pressed(ord("D"))){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.D);
		network_send_packet(0,buffer,buffer_get_size(buffer));
		d = 1;
	}
	if (keyboard_check_released(ord("A"))){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.A_R);
		network_send_packet(0,buffer,buffer_get_size(buffer));
		a = 0;
	}
	if (keyboard_check_released(ord("D"))){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.D_R);
		network_send_packet(0,buffer,buffer_get_size(buffer));
		d = 0;
	}
	if keyboard_check_pressed(ord("Z")){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.Z);
		network_send_packet(0,buffer,buffer_get_size(buffer));
		jj = physics_joint_distance_create(Obj_player1.id, Obj_player2.id, x, y, Obj_player2.x, Obj_player2.y, 1);
	}
	if keyboard_check_released(ord("Z")){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.Z_R);
		network_send_packet(0,buffer,buffer_get_size(buffer));
		physics_joint_delete(jj);
		jj = 0;
	}
}
if nad = 1{
	if (keyboard_check_pressed(ord("A"))){
		a = 1;
	}
	if (keyboard_check_pressed(ord("D"))){
		d = 1;
	}
	if (keyboard_check_released(ord("A"))){
		a = 0;
	}
	if (keyboard_check_released(ord("D"))){
		d = 0;
	}
	if keyboard_check_pressed(ord("Z")){
		jj = physics_joint_distance_create(Obj_player1.id, Obj_player2.id, x, y, Obj_player2.x, Obj_player2.y, 1);
	}
	if keyboard_check_released(ord("Z")){
		physics_joint_delete(jj);
		jj = 0;
	}
}
if clear == 1 {
	delay--;
	if delay <= 0{
		var it;
		it = instance_create_depth( x, y, -1, obj_fire);
		it . gravity_ = 0.02;
		it . vspeed_ = -random_range(8,15);
		it . hspeed_ = random_range( -3, 3);
		delay = irandom_range(80,160);
	}
}