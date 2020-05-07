if (!hanging)
{
	var dirfacing = point_direction(x, y, mouse_x, mouse_y);
	o_id = collision_line(x, y, x + lengthdir_x(500, dirfacing), y + lengthdir_y(500, dirfacing), o_wall, false, true);

	
	if (instance_exists(o_id))
	{		
		var distance = distance_to_object(o_id);
		rope_joint = physics_joint_rope_create(id, o_id, x, y, o_id.x, o_id.y, distance, 0);
		show_debug_message("Created rope joint: " + string(rope_joint));
		hanging = true;	
	}
}
else
{
	hanging = false;
	show_debug_message("Destroying rope joint: " + string(rope_joint));
	physics_joint_delete(rope_joint);
	rope_joint = -1;
	show_debug_message("Should be -1: " + string(rope_joint));
	o_id = -1;
}