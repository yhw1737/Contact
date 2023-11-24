level = 1;
b = 0;
draw_set_font(Font1);
audio = audio_play_sound(BGM1,1,1);
m_x = 0;
m_y = 0;
enum DATA{
A,
D,
W,
Z,
A_R,
D_R,
W_R,
Z_R,
Restart,
Next,
POS,
END
}
volume = 50;
a = 150;
buffer = buffer_create(1,buffer_grow,1);
draw_enable_drawevent(false);

base_room_speed = room_speed;
fast_room_speed = room_speed * 1.5;

base_period = 1000 / base_room_speed;

real_time = current_time;
step_time = current_time;