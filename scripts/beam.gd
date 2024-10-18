extends Node2D

const maxrange = 5000
var based_width = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Line2D.width = based_width
	
	var mouse_position = get_local_mouse_position()
	var max_cast_to = mouse_position.normalized() * maxrange
	$RayCast2D.target_position = max_cast_to
	
	if $RayCast2D.is_colliding():
		var collider = $RayCast2D.get_collider()
		if collider.is_reflector():
			collider.set_beam_visible()
		$Reference.global_position = $RayCast2D.get_collision_point()
		$Line2D.set_point_position(1, $Line2D.to_local($Reference.global_position))
	else:
		$Reference.global_position = $RayCast2D.target_position
		$Line2D.points[1] = $Reference.global_position
		
