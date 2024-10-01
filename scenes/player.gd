extends CharacterBody2D

const SPEED = 100.0


func _physics_process(_delta):

	var xInput = Input.get_axis("left", "right")
	if xInput:
		velocity.x = xInput * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var yInput = Input.get_axis("up", "down")
	if yInput:
		velocity.y = yInput * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		

	move_and_slide()
