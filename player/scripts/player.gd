class_name Player extends CharacterBody2D




func _process( _delta: float) -> void:
	pass



func _physics_process( _delta: float) -> void:
	velocity.x = 0
	if Input.is_action_pressed("left"):
		velocity.x = -100
	elif Input.is_action_pressed("right"):
		velocity.x = 100
	if Input.is_action_pressed("jump"):
		velocity.y = -100 
	velocity.y = velocity.y + 9.80 + _delta 
	move_and_slide()
	pass
