extends Node2D

var max_bounces = 10
var rotation_speed = 1.0

@onready var beam: Node2D = $"."
@onready var raycast: RayCast2D = $RayCast2D
@onready var line: Line2D = $Line2D

func level_complete():
	var collider = raycast.get_collider()
	if collider != null:
		if collider.is_in_group("EndPrism"):
			return true
	return false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	line.clear_points()

	line.add_point(Vector2.ZERO)
	
	# Define initial raycast
	raycast.global_position = line.global_position
	raycast.target_position = (get_global_mouse_position()-line.global_position).normalized()*1000
	raycast.force_raycast_update()
	
	var previous = null 
	var bounces = 0
	
	#if Input.is_action_just_pressed("BeamRotateClockwise"):
		#beam.rotate(rotation_speed * delta)
	#if Input.is_action_just_pressed("BeamRotateCounterClockwise"):
		#beam.rotate(-rotation_speed * delta)
	
	while true:
		if not raycast.is_colliding():
			@warning_ignore("confusable_local_declaration")
			var point = raycast.global_position + raycast.target_position
			line.add_point(line.to_local(point))
			break
			
		var collider = raycast.get_collider()
		var point = raycast.get_collision_point()
		
		line.add_point(line.to_local(point))
		
		if not collider.is_in_group("Reflectors"):
			break
		
		var normal = raycast.get_collision_normal()
		
		if normal == Vector2.ZERO:
			break
		
		# Update collisions
		if previous != null:
			previous.collision_mask = 3
			previous.collision_layer = 3
		previous = collider
		previous.collision_mask = 0
		previous.collision_layer = 0
		
		# Update raycast
		raycast.global_position = point
		raycast.target_position = raycast.target_position.bounce(normal)
		raycast.force_raycast_update()
		
		bounces += 1
		if bounces >= max_bounces:
			break
		
	if previous != null:
		previous.collision_mask = 3
		previous.collision_layer = 3
