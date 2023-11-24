x5 = Obj_floor05.x;
x6 = Obj_floor06.x;
y5 = Obj_floor05.y-200;
y6 = Obj_floor06.y-200;
physics_joint_pulley_create(Obj_floor05,Obj_floor06,Obj_floor05.x,Obj_floor05.y-200,Obj_floor06.x,Obj_floor06.y-200,-1,0,-1,0,1,true);
physics_joint_pulley_create(Obj_floor05,Obj_floor06,Obj_floor05.x,Obj_floor05.y-200,Obj_floor06.x,Obj_floor06.y-200,1,0,1,0,1,true);
physics_joint_pulley_create(Obj_floor05,Obj_floor06,Obj_floor05.x,Obj_floor05.y-200,Obj_floor06.x,Obj_floor06.y-200,-5,0,-5,0,1,true);
physics_joint_pulley_create(Obj_floor05,Obj_floor06,Obj_floor05.x,Obj_floor05.y-200,Obj_floor06.x,Obj_floor06.y-200,5,0,5,0,1,true);
