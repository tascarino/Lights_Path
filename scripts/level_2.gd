extends Node2D

@onready var beam: Node2D = $Beam
@onready var light: Node2D = $Light
@onready var door: AnimatedSprite2D = $Door
@onready var entrance: AnimatedSprite2D = $Entrance

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	entrance.play("default")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if beam.level_complete():
		light.light_on()
		door.level_end()


func _on_exit_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print("colliding")
		get_tree().change_scene_to_file("res://scenes/level1.tscn")
