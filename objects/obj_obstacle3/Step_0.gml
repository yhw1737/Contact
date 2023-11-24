if place_meeting(x,y-1,Obj_player1){
	with(Obj_player1){
	physics_apply_impulse(x,y+1,0,-400);
	audio_play_sound(Sound3,1,0);
	}
}
if place_meeting(x,y-1,Obj_player2){
	with(Obj_player2){
	physics_apply_impulse(x,y+1,0,-400);
	audio_play_sound(Sound3,1,0);
	}
}