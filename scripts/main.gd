extends Node2D

@onready var beam: Node2D = $Beam
@onready var light: Node2D = $Light

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if beam.level_complete():
		light.light_on()
