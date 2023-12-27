extends characterScript



func _physics_process(delta):
	var move_direction = Vector3.ZERO
	if Input.is_action_pressed("ui_down"):
		move_direction.z = 1
	elif Input.is_action_pressed("ui_up"):
		move_direction.z = -1
	elif Input.is_action_pressed("ui_right"):
		move_direction.x = 1
	elif Input.is_action_pressed("ui_left"):
		move_direction.x = -1
		
	velocity.x = move_direction.x * speed
	velocity.z = move_direction.z * speed 
	velocity.y -= GRAVITY * delta
	
	velocity = move_and_slide(velocity)

