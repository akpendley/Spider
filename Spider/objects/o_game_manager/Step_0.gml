if (!defeat)
{
	spawn_germs();

	var dirty = 0;
	var total = 0;

	with (o_wall)
	{
		if (y == 16)
		{
			total++;
			if (image_index == 1) dirty++;
		}
	}

	percent = dirty / total;

	if (percent == 1)
	{
		// game over
		instance_destroy(o_covid);
		defeat = true;
	}
}