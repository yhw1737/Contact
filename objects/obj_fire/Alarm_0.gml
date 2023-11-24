
repeat( 60)
{
  var it;
  it = instance_create_depth( x, y, -1,obj_f);
  it . gravity_ = 0.05;
  var dir = random( 360);
var  speed_ = random( 5);
  it . hspeed_ = lengthdir_x(speed_,dir);
  it.vspeed_ = lengthdir_y(speed_,dir);
}
instance_create_depth( x, y, -1,obj_light);
instance_destroy();