if (a && jj = 0){
	phy_rotation-=1;
	physics_apply_impulse(x+1,y,-6,0);
}
if (d && jj = 0){
	phy_rotation+=1;
	physics_apply_impulse(x-1,y,6,0);
}
phy_speed_x = clamp(phy_speed_x,-3,3);
if is && nad = 0{
	if (keyboard_check_pressed(vk_left)){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.A);
		network_send_packet(1,buffer,buffer_get_size(buffer));
		a = 1;
	}
	if (keyboard_check_pressed(vk_right)){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.D);
		network_send_packet(1,buffer,buffer_get_size(buffer));
		d = 1;
	}
	if (keyboard_check_released(vk_left)){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.A_R);
		network_send_packet(1,buffer,buffer_get_size(buffer));
		a = 0;
	}
	if (keyboard_check_released(vk_right)){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.D_R);
		network_send_packet(1,buffer,buffer_get_size(buffer));
		d = 0;
	}
	if keyboard_check_pressed(vk_enter){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.Z);
		network_send_packet(1,buffer,buffer_get_size(buffer));
		jj = physics_joint_distance_create(id,Obj_player1.id,x,y,Obj_player1.x,Obj_player1.y,1);

	}
	if keyboard_check_released(vk_enter){
		buffer_seek(buffer,buffer_seek_start,0);
		buffer_write(buffer,buffer_u8,DATA.Z_R);
		network_send_packet(1,buffer,buffer_get_size(buffer));
		physics_joint_delete(jj);
		jj = 0;
	}
}
if nad = 1{
	if (keyboard_check_pressed(vk_left)){
		a = 1;
	}
	if (keyboard_check_pressed(vk_right)){
		d = 1;
	}
	if (keyboard_check_released(vk_left)){
		a = 0;
	}
	if (keyboard_check_released(vk_right)){
		d = 0;
	}
	if keyboard_check_pressed(vk_enter){
		jj = physics_joint_distance_create(id,Obj_player1.id,x,y,Obj_player1.x,Obj_player1.y,1);

	}
	if keyboard_check_released(vk_enter){
		physics_joint_delete(jj);
		jj = 0;
	}
}
if Obj_player1.clear == 1 {
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