if (y > 410) instance_destroy();
if (collision_point(x, y, o_wall, false, true) != noone)
{
	if (!stuck)
	{
		stuck = true;
	}
	else
	{
		instance_destroy();
	}
}
else
{
	stuck = false;
}

alarm[2] = room_speed * 5;