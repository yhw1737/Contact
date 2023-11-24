var type = async_load[? "type"];

if is{
if (type == network_type_data){
	var buffer = async_load[? "buffer"];
	buffer_seek(buffer,buffer_seek_start,0);
	var data = buffer_read(buffer,buffer_u8);
	switch(data){
	case DATA.A :
	Obj_player1.a = 1;
	break;
	case DATA.A_R :
	Obj_player1.a = 0;
	break;
	case DATA.D :
	Obj_player1.d = 1;
	break;
	case DATA.D_R :
	Obj_player1.d = 0;
	break;
	case DATA.Z :
	with(Obj_player1){
		jj = physics_joint_distance_create(Obj_player1.id, Obj_player2.id, x, y, Obj_player2.x, Obj_player2.y, 1);
	}
	break;
	case DATA.Z_R :
	with(Obj_player1){
		physics_joint_delete(jj);
		jj = 0;
	}
	break;
	case DATA.Restart :
	room_restart();
	break;
	case DATA.Next :
	room_goto_next();
	level++;
	break;
	case DATA.END :
	game_end();
	break;
	}
}
}
else{
if (type == network_type_data){
	var buffer = async_load[? "buffer"];
	buffer_seek(buffer,buffer_seek_start,0);
	var data = buffer_read(buffer,buffer_u8);
	switch(data){
	case DATA.A :
	Obj_player2.a = 1;
	break;
	case DATA.A_R :
	Obj_player2.a = 0;
	break;
	case DATA.D :
	Obj_player2.d = 1;
	break;
	case DATA.D_R :
	Obj_player2.d = 0;
	break;
	case DATA.Z :
	with(Obj_player2){
		jj = physics_joint_distance_create(id, Obj_player1.id, x, y, Obj_player1.x, Obj_player1.y, 1);
	}
	break;
	case DATA.Z_R :
	with(Obj_player2){
		physics_joint_delete(jj);
		jj = 0;
	}
	break;
	case DATA.Restart :
	room_restart();
	break;
	case DATA.END :
	game_end();
	break;
	case DATA.Next :
	room_goto_next();
	level++;
	break;
	case DATA.POS :
		var id_,xx,yy,rot,obj;
		obj = buffer_read(buffer,buffer_u8);
		xx = buffer_read(buffer,buffer_u16);
		yy = buffer_read(buffer,buffer_u16);
		rot = buffer_read(buffer,buffer_f32);
		id_ = obj;
		id_.x = xx;
		id_.phy_position_x = xx;
		id_.y = yy;
		id_.phy_position_y = yy;
		id_.phy_rotation = rot;
		b = 1;
		alarm[10] = 10;
	break;
	}
}
}