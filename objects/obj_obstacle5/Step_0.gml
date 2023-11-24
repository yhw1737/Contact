if place_meeting(x+1,y,Obj_player1) || place_meeting(x+1,y,Obj_player2){
	x--;
	phy_position_x--;
}
if place_meeting(x-1,y,Obj_player1) || place_meeting(x-1,y,Obj_player2){
	x++;
	phy_position_x++;
}