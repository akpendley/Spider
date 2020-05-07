if (y < room_height * 0.8 && instance_number(o_covid) < max_germs) 
{
	physics_apply_impulse(x, y, random(1) * choose(-1, 1), random(1) * choose(-1, 1));
	instance_create_depth(x, y, depth, object_index);
}
alarm[0] = room_speed * irandom_range(3, 5);