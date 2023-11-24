var v;
v = instance_create_depth( x, y, -1,obj_ff)
v . color = a_

image_alpha -= 0.04
if image_alpha < 0 instance_destroy();

x+=hspeed_;
y+=vspeed_;
vspeed+=vacc;
vacc+=gravity_;