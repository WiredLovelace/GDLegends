/// @description Draw
if (tosel == -1)
	exit

draw_self ()
	
var spr = object_get_sprite (tosel)
draw_sprite_ext (spr, 0, x, y, image_xscale + 0.3, image_yscale + 0.3, image_angle, image_blend, image_alpha)