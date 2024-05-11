extends CharacterBody3D

var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta):
	if not is_on_floor():
		velocity.y -= gravity * delta
	
	var input_dir = Input.get_vector("left", "right", "up", "down")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * StatusGlobal.player_speed
		velocity.z = direction.z * StatusGlobal.player_speed
	else:
		velocity.x = move_toward(velocity.x, 0, StatusGlobal.player_speed)
		velocity.z = move_toward(velocity.z, 0, StatusGlobal.player_speed)
	
	move_and_slide()
