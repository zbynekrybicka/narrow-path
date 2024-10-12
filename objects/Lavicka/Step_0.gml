var _rozsah_x = (pravy_okraj - levy_okraj)
var _rozsah_y = (spodni_okraj - horni_okraj)

var _width = window_get_width()
var _height = window_get_height()

var _mouse_x = window_mouse_get_x()
var _mouse_y = window_mouse_get_y()

var _okraj_x = 100

if (_mouse_x < _okraj_x) {
  _mouse_x = _okraj_x
} else if (_mouse_x > (_width - _okraj_x)) {
  _mouse_x = _width - _okraj_x
}


var _koeficient_x = 1 / (_width - _okraj_x * 2) * (_mouse_x - _okraj_x)

x = levy_okraj +  _rozsah_x * _koeficient_x
y = horni_okraj + _rozsah_y * _koeficient_x