if (!intermission)
{
	if (instance_number(o_covid) == 0)
	{
		if (germs_to_spawn == 0)
		{
			// next wave
			wave++;
			alarm[2] = room_speed * 4;
			intermission = true;
		}
		else
		{
			// continue spawning
			var spawn_number = clamp(irandom_range(3, 10), 0, germs_to_spawn);
			repeat(spawn_number)
			{
				// choose an entry
				var x_pos = irandom_range(0, room_width);
				var y_pos = 585;
				instance_create_depth(x_pos, y_pos, -1, o_covid);
				germs_to_spawn--;
				show_debug_message(string(germs_to_spawn) + " germs remaining");
			}
		}
	}
}