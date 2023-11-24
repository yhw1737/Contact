/*
fixture = physics_fixture_create();

physics_fixture_set_polygon_shape(fixture);
physics_fixture_add_point(fixture,-32,-14);
physics_fixture_add_point(fixture,-18,-14);
physics_fixture_add_point(fixture,-18,0);
physics_fixture_add_point(fixture,-32,0);
physics_fixture_set_collision_group(fixture,1);
physics_fixture_set_density(fixture,0.8);
physics_fixture_set_restitution(fixture,0.1);
physics_fixture_set_linear_damping(fixture,0.1);
physics_fixture_set_angular_damping(fixture,0.1);
physics_fixture_set_friction(fixture,0.5);
physics_fixture_bind(fixture,id);

physics_fixture_delete(fixture);

fixture = physics_fixture_create();

physics_fixture_set_polygon_shape(fixture);
physics_fixture_add_point(fixture,+18,-14);
physics_fixture_add_point(fixture,+32,-14);
physics_fixture_add_point(fixture,+32,0);
physics_fixture_add_point(fixture,+18,0);
physics_fixture_set_collision_group(fixture,1);
physics_fixture_set_density(fixture,0.8);
physics_fixture_set_restitution(fixture,0.1);
physics_fixture_set_linear_damping(fixture,0.1);
physics_fixture_set_angular_damping(fixture,0.1);
physics_fixture_set_friction(fixture,0.5);
physics_fixture_bind(fixture,id);

physics_fixture_delete(fixture);
*/
it = instance_create_depth(x-16,y+20,depth-1,Obj_wheel);
it2 = instance_create_depth(x+16,y+20,depth-1,Obj_wheel);
wheel1 = physics_joint_wheel_create(id,it,it.x,it.y,0,1,false,0,0,0.01,1,true);
wheel2 = physics_joint_wheel_create(id,it2,it2.x,it2.y,0,1,false,0,0,0.01,1,true);