draw_set_color(c_white);

if (hanging)
{
	draw_line(x, y, o_id.x, o_id.y);
}

// draw crosshair
var dirfacing = point_direction(x, y, mouse_x, mouse_y);
var xx = x + lengthdir_x(projectile_spawn_distance / 2, dirfacing);
var yy = y + lengthdir_y(projectile_spawn_distance / 2, dirfacing);
draw_rectangle(xx - 1, yy - 1, xx + 1, yy + 1, true);
	
draw_self();