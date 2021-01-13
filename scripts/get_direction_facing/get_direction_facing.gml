
function get_direction_facing(){
	var _direction = argument0
	direction_facing = round(_direction / 90);

	if (direction_facing == 4){
		direction_facing = 0;
	}
}