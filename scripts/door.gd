extends AnimatedSprite2D

@onready var door: AnimatedSprite2D = $"."
var complete = false

@onready var static_body_2d: StaticBody2D = $StaticBody2D
@onready var collision_shape_2d: CollisionShape2D = $StaticBody2D/CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func level_end():
	static_body_2d.visible = false
	collision_shape_2d.disabled = true
	if !complete:
		door.play("disappear")
		complete = true
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func is_reflector():
	return false
