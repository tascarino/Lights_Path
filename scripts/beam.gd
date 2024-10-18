extends Node2D

var max_bounces = 10

@onready var raycast: RayCast2D = $RayCast2D
@onready var line: Line2D = $Line2D

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
	
	while true:
		if not raycast.is_colliding():
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
