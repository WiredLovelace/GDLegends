jx = 0
repeat image_xscale
{
	draw_sprite_ext (sprite_index, 0, x + jx, y, 1, image_yscale, image_angle, global.gcolor, 1)
	jx += iniw
}
