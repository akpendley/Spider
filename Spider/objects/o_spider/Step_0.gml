if (phy_move_wrap(true, false, sprite_width / 2))
{
	show_debug_message("hi");
	if (hanging)
	{
		hanging = false;
		show_debug_message("kys");
		physics_joint_delete(rope_joint);
		rope_joint = -1;
		o_id = -1;
	}
}