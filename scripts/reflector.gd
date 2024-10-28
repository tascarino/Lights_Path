extends RigidBody2D

@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

var colliding
var clockwise
var counterclockwise

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	colliding = false

	
func is_reflector():
	return true

func _physics_process(delta: float) -> void:
	if colliding:
		rotate(1 * delta)

func _on_handle_body_entered(body: Node) -> void:
	if body.is_in_group("Player"):
		print("colliding")
		colliding = true
		# Calculate direction based on relative position between pole and body
		#var direction = (body.global_position - global_position).normalized()
		
		# Rotate clockwise if the collision is from the left
		#if direction.x < 0:
		#	apply_torque(300)
		#else:
		#	apply_torque(-300)
			


func _on_handle_area_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print("stopped colliding")
		colliding = false
