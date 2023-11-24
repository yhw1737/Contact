
room_goto_next();
level++;
if is{
buffer_seek(buffer,buffer_seek_start,0);
buffer_write(buffer,buffer_u8,DATA.Next);
network_send_packet(1,buffer,buffer_get_size(buffer));
}
else
{
buffer_seek(buffer,buffer_seek_start,0);
buffer_write(buffer,buffer_u8,DATA.Next);
network_send_packet(0,buffer,buffer_get_size(buffer));
}
