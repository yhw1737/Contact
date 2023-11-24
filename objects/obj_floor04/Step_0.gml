if phy_position_x < xx {
	phy_position_x+=2;
	if place_meeting(x,y-1,Obj_player1){
		Obj_player1.phy_position_x+=2;
	}
	if place_meeting(x,y-1,Obj_player2){
		Obj_player2.phy_position_x+=2;
	}
}
if phy_position_x > xx {
	phy_position_x-=2;
	if place_meeting(x,y-1,Obj_player1){
		Obj_player1.phy_position_x-=2;
	}
	if place_meeting(x,y-1,Obj_player2){
		Obj_player2.phy_position_x-=2;
	}
}
if abs(xx-x) < 2 {
	var temp = xx;
	xx = xxx;
	xxx = temp;
	}