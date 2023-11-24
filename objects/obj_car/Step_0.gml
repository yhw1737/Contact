if place_meeting(x,y-1,Obj_player2){
	with(it){
		physics_apply_impulse(x-1,y,4,0);
		phy_rotation+=2;
	}
	with(it2){
		physics_apply_impulse(x-1,y,4,0);
		phy_rotation+=2;
	}
	physics_apply_impulse(x-1,y,4,0);
}