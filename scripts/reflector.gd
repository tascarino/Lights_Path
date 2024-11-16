extends RigidBody2D

var collidingleft
var collidingright

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	collidingleft = false
	collidingright = false

	

func _physics_process(delta: float) -> void:
	if collidingleft:
		rotate(.55 * delta)
	if collidingright:
		rotate(-.55 * delta)

func _on_handle_area_left_entered(body: Node) -> void:
	if body.is_in_group("Player"):
		if body.in_movement():
			#print("colliding")
			collidingleft = true
			collidingright = false
		
func _on_handle_area_left_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		#print("stopped colliding")
		collidingleft = false

func _on_handle_area_right_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		if body.in_movement():
			#print("colliding")
			collidingright = true
			collidingleft = false

func _on_handle_area_right_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		#print("stopped colliding")
		collidingright = false
