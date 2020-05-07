if (!automatic_fire)
{
	var dirfacing = point_direction(x, y, mouse_x, mouse_y);
	var x_pos = lengthdir_x(projectile_spawn_distance, dirfacing);
	var y_pos = lengthdir_y(projectile_spawn_distance, dirfacing);

	var inst = instance_create_depth(x + x_pos, y + y_pos, depth - 1, o_projectile);
	inst.direction = dirfacing;
	inst.speed = 10;

	phy_rotation = -dirfacing;
	physics_apply_impulse(x, y, lengthdir_x(projectile_spawn_distance, dirfacing - 180) / 8, lengthdir_y(projectile_spawn_distance, dirfacing - 180) / 8);
}