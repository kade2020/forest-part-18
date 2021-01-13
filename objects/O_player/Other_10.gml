/// @description move state
image_speed = 0;

var _x_input  = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _y_input  = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _input_direction_ = point_direction(0, 0, _x_input, _y_input);
var _attack_input = keyboard_check_pressed(ord("J"));
var _roll_input = keyboard_check_pressed(ord("Z"));
roll_direction_ = direction_facing * 90;
if (_x_input == 0 && _y_input == 0)  {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = 0.6;
	if (_x_input != 0){
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction_);
	add_movement_maxspeed(_input_direction_, acceleration, max_speed);
	roll_direction_ = direction_facing * 90;
}

if (_attack_input = true){
	image_index = 0;
	state_ = player.sword;
}

if _roll_input == true {
	image_index = 0;
	state_ = player.evade;
}

move_movement_entity(false);