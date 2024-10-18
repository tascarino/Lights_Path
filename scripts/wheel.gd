extends Node2D

@export var rotation_speed: float = 90.0  # Degrees per second
@export var rotation_direction: int = 1  # 1 for clockwise, -1 for counter-clockwise

signal wheel_rotated(rotation: float)

var player_touching: bool = false  # Tracks if player is in contact

# Rotate the wheel if the player is touching it.
func _physics_process(delta: float) -> void:
	if player_touching:
		rotate_wheel(delta)

# Rotate the wheel and emit the rotation signal.
func rotate_wheel(delta: float) -> void:
	var rotation_delta = rotation_direction * rotation_speed * delta
	rotation_degrees += rotation_delta
	emit_signal("wheel_rotated", rotation_degrees)


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name =="Player":
		player_touching = true
		print("Player started touching the wheel")

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name =="Player":
		player_touching = false
		print("Player stopped touching the wheel")
