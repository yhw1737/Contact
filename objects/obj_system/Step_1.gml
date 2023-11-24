if (real_time <= step_time)
{
    draw_enable_drawevent(true);
    room_speed = base_room_speed;
}
else
{
    draw_enable_drawevent(false);
    room_speed = fast_room_speed;
}

step_time += base_period;