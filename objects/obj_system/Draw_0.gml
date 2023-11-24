/*
var flag = phy_debug_render_aabb | phy_debug_render_joints;
physics_world_draw_debug(flag);
*/
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(view_get_xport(0)+5,view_get_yport(0)+5,"Music Volume : "+string(volume)+"\n\n-,+ to control");
draw_set_halign(fa_right);
draw_text(view_get_xport(0)+1600-5,view_get_yport(0)+5,"Press I to control window position\n\nPress F to toggle fullscreen");
if a <= 0{
	if a > -100{
	a--;
	}
	draw_set_alpha(-a/100);
if Obj_player1.alarm[1] != -1{
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_text(room_width/2,room_height/4,"Great!"+string(Obj_player1.alarm[1]/60));
}
else
{
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
switch(level){
case 1:
draw_text(room_width/2,room_height/4,"If you contact each other, you can move on.\n\nmove with asdw, arrows.");
break;
case 2:
//draw_text(683,480,"You can connect each other by pressing z and enter.\n\nrestart by R.");
break;
case 3:
draw_text(room_width/2,room_height/4,"Bounce!");
break;
case 4:
draw_text(room_width/2,room_height/4,"Gather all the Crystals!");
break;
case 5:
draw_text(room_width/2,room_height/4,"Jump!");
break;
}
}
draw_set_alpha(1);
}
else
{
	a--;
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_set_alpha(a/50);
	draw_text(room_width/2,room_height/4,"Level "+string(level));
	draw_set_alpha(1);
}
if Obj_player1.clear = 1{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_text(room_width/2,room_height/4,"Congrats!\n\nYou cleared the game!");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
//var flag = phy_debug_render_aabb | phy_debug_render_joints;
//physics_world_draw_debug(flag);