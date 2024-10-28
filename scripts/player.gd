extends CharacterBody2D

const SPEED = 65.0
var push_force = 80.0

@onready var sprite = $AnimatedSprite2D  # Reference to AnimatedSprite2D node

func is_reflector():
	return false
	

func _physics_process(_delta):
	var xInput = Input.get_axis("left", "right")
	var yInput = Input.get_axis("up", "down")
	var is_moving = false

	# Movement logic
	if xInput:
		velocity.x = xInput * SPEED
		is_moving = true
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if yInput:
		velocity.y = yInput * SPEED
		is_moving = true
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	# Animation logic for different directions
	if is_moving:
		if yInput > 0:  # Moving down (forward)
			if !sprite.is_playing() or sprite.animation != "walk_down":
				sprite.play("walk_down")
		elif yInput < 0:  # Moving up (backward)
			if !sprite.is_playing() or sprite.animation != "walk_up":
				sprite.play("walk_up")
		elif xInput > 0:  # Moving right
			if !sprite.is_playing() or sprite.animation != "walk_right":
				sprite.play("walk_right")
		elif xInput < 0:  # Moving left
			if !sprite.is_playing() or sprite.animation != "walk_left":
				sprite.play("walk_left")
	else:
		# Idle animations based on last movement direction
		if sprite.animation == "walk_down":
			sprite.play("idle_down")
		elif sprite.animation == "walk_up":
			sprite.play("idle_up")
		elif sprite.animation == "walk_right":
			sprite.play("idle_right")
		elif sprite.animation == "walk_left":
			sprite.play("idle_left")

	move_and_slide()
	
	 
