/// @description Set the negrito value and create close button

if (negrito_add == undefined)
	negrito_add = 1

global.negrito += negrito_add
depth = (global.negrito + 1) * -1

close_btn = instance_create_depth (x, y + sprite_height, self.depth - 1, obj_text_popup_close_btn)
close_btn.pop_parent = self.id
close_btn.image_xscale = 1
close_btn.image_yscale = 0.85
close_btn.scale_start = 1
close_btn.yscale = 0.85
close_btn.draw_title = 1
close_btn.title_font = fnt_alata_big
close_btn.title_text = btn_label