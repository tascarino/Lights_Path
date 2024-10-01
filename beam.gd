extends Node2D

var sender # start crystal

var bounces := 1

const MAX_LENGTH := 2000 # max length

onready var line = $Line2D
var max_cast_to # vector that updates based on rotation
var rot := 0.0 #mouse rotation

var lasers := []

func _ready() -> void:
	#add our first racast to the laser array
	lasers.append($Laser)
	for i in range(bounces):
		var raycast = $Laser.duplicate()
		raycast.enabled = false
		raycast.add_exeption(sender)
		add_child(raycast)
		lasers.append(raycast)
		
	max_cast_to = Vector2(MAX_LENGTH, 0).rotated(rot)
	$Laser.cast_to = max_cast_to
	
	$Line2D.set_as_toplevel(true)


func _process(delta: float) -> void:
	
	#get rotation to mouse
	rot = get_local_mouse_position().angle()
	
	# reset points 
	line.clear_points()
	
	# add first point at laser's start position
	line.add_point(global_position)
	
	# set the farthest cast
	max_cast_to = Vector2(MAX_LENGTH,0).rotated(rot)
	










	
