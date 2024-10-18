extends StaticBody2D

@onready var beam: Node2D = $Beam
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func is_reflector():
	return true


func set_beam_visible():
	beam.visible = true

func set_beam_hidden():
	beam.visible = false
	
