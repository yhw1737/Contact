if sprite_width == 32 && sprite_height == 32{
	draw_self();
}
if sprite_width != 32 && sprite_height == 32{
	for(var i = 1;i < sprite_width-1; i++){
		draw_sprite_part(sprite_index,0,15,0,1,32,x-sprite_width/2+1*i,y-16);
	}
	draw_sprite_part(sprite_index,0,0,0,2,32,x-sprite_width/2,y-16);
	draw_sprite_part(sprite_index,0,30,0,2,32,x+sprite_width/2-1,y-16);
}
if sprite_height != 32 && sprite_width == 32{
	for(var i = 0;i < sprite_height-2; i++){
		draw_sprite_part(sprite_index,0,0,15,32,1,x-16,y-sprite_height/2+1*(i+1));
	}
	draw_sprite_part(sprite_index,0,0,0,32,2,x-16,y-sprite_height/2);
	draw_sprite_part(sprite_index,0,0,30,32,2,x-16,y+sprite_height/2-1);
}