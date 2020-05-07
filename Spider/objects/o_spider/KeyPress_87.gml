if (hanging)
{
	var distance = distance_to_object(o_id) * 0.66;
	physics_joint_delete(rope_joint);
	rope_joint = physics_joint_rope_create(id, o_id, x, y, o_id.x, o_id.y, distance, 0);
}