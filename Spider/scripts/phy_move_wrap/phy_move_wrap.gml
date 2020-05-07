/// @func phy_move_wrap(horizontal, vertical, margin)
/// @desc wraps the phy_position_x/y of this instance with room dimensions considering the margin
/// @param horizontal boolean wrap horizontally
/// @param vertical boolean wrap vertically
/// @param margin width to allow travel outside room dimensions before wrapping
/// returns true if wrapping occurred

var horizontal = argument0;
var vertical = argument1;
var margin = argument2;
var wrapped = false;

var left_border = -margin;
var top_border = -margin;
var right_border = room_width + margin;
var bottom_border = room_height + margin;

if (horizontal)
{
	if (phy_position_x < left_border)
	{
		phy_position_x = right_border;
		wrapped = true;
	}
	
	if (phy_position_x > right_border)
	{
		phy_position_x = left_border;
		wrapped = true;
	}
}

if (vertical)
{
	if (phy_position_y < top_border)
	{
		phy_position_y = bottom_border;
		wrapped = true;
	}

	if (phy_position_y > bottom_border)
	{
		phy_position_y = top_border;
		wrapped = true;
	}
}

return wrapped;