if alarm[1] = -1 {
	alarm[0] = 1;
	buffer_seek(buffer,buffer_seek_start,0);
	buffer_write(buffer,buffer_u8,DATA.POS);
	buffer_write(buffer,buffer_u8,object_index);
	buffer_write(buffer,buffer_u16,x);
	buffer_write(buffer,buffer_u16,y);
	buffer_write(buffer,buffer_f32,phy_rotation);
	network_send_packet(1,buffer,buffer_tell(buffer));
}