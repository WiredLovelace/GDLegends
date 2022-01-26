function scr_transform(argument0) {
	tt = instance_create (x, y, argument0)
	// TODO: Check wave
	tt.vsp = vsp
	tt.hsp = hsp
	tt.angle = angle
	tt.gravdir = gravdir
	tt.mini = mini
	instance_destroy ()



}
