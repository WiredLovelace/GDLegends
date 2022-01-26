function draw_trail(vlength, xoffset, yoffset, vwidth, vcolor, vsprite, vslim, valpha){
	var _length = vlength
	var _width = vwidth
	var _color = vcolor
	var _sprite = vsprite
	var _slim = vslim
	var _alpha = valpha
	
	array_trail [0, 0] = x + xoffset
	array_trail [0, 1] = y + yoffset
	_height = array_height_2d (array_trail)
	array_trail [0, 2] = 0
	
	if (_height > 1)
		array_trail [0, 2] = point_distance (array_trail [0, 0], array_trail [0, 1], array_trail [1, 0], array_trail [1, 1]) + array_trail [1, 2]	
		
	_texture = -1
	_dim = 1
		
	if (_sprite >= 0)
	{
		_texture = sprite_get_texture (_sprite, 0)
		_dim = sprite_get_width (_sprite) / sprite_get_width (_sprite)
	}
	
	gpu_set_texrepeat (true)
	
	// Drawing the primitive
	draw_primitive_begin_texture (pr_trianglestrip, _texture)
	_alphat = 1
	_dir = 0
	_min = min (_height - 1, _length)
	
	for (var i = 0; i < _min; i++)
	{
		if (array_trail [i, 0] != array_trail [i + 1, 0] ||
			array_trail [i, 1] != array_trail [i + 1, 1])
			_dir = point_direction (array_trail [i, 0], array_trail [i, 1], array_trail [i + 1, 0], array_trail [i + 1, 1])
		
		var len = _width / 2 - ((i + 1) / _min * _width / 2) * _slim
		var xx = lengthdir_x (len, _dir + 90)
		var yy = lengthdir_y (len, _dir + 90)
		_alphat = (_min - i) / (_min / 2) * _alpha
		
		draw_vertex_texture_color (array_trail [i, 0] + xx, array_trail [i, 1] + yy, array_trail [i, 2] / _width / _dim, 0, _color, _alphat)
		draw_vertex_texture_color (array_trail [i, 0] - xx, array_trail [i, 1] - yy, array_trail [i, 2] / _width / _dim, 1, _color, _alphat)
	}
	draw_primitive_end ()
	
	// Replacing the coordinates positions within the array
	_min = min (_height, _length)
	for (var i = _min; i > 0; i--)
	{
		array_trail [i, 0] = array_trail [i - 1, 0]
		array_trail [i, 1] = array_trail [i - 1, 1]
		array_trail [i, 2] = array_trail [i - 1, 2]
	}
}