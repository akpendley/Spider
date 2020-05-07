if (defeat)
{
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_font(f_font);
	draw_text(960, 540, "DEFEAT");
}
else
{
	if (intermission)
	{
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_set_font(f_font);
		draw_text(960, 540, "WAVE " + string(wave));
	}
}