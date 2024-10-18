extends Node2D

@export var rotation_speed: float = 90.0  # Degrees per second
@export var rotation_direction: int = 1  # 1 for clockwise, -1 for counter-clockwise

signal wheel_rotated(rotation: float)

@onready var collision_body: CharacterBody2D = $CharacterBody2D  # Reference to the prong body

# Called every physics frame.
func _physics_process(delta: float) -> void:
	if is_player_touching():
		rotate_wheel(delta)

# Rotate the wheel and emit the new rotation.
func rotate_wheel(delta: float) -> void:
	var rotation_delta = rotation_direction * rotation_speed * delta
	rotation_degrees += rotation_delta
	emit_signal("wheel_rotated", rotation_degrees)

# Checks if the player is colliding with the wheel using move_and_collide().
func is_player_touching() -> bool:
	var collision = collision_body.move_and_collide(Vector2.ZERO)  # Check for collision
	if collision and collision.get_collider().name == "Player":
		return true
	return false
