draw_set_alpha(0.1);
draw_set_color(c_lime);
draw_rectangle(0, room_height, room_width, room_height * (1 - percent), false);
draw_set_alpha(1);

draw_sprite(s_cursor, 0, mouse_x, mouse_y);