extends Node2D

@onready var light: Sprite2D = $LightOn

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func light_on():
	light.visible = true
