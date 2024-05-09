extends CharacterBody3D

@onready var nav_agent = $NavigationAgent3D
@export var player: CharacterBody3D

var speed = StatusGlobal.enemy_speed

func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_path_position()
	var new_velocity = (next_location - current_location).normalized() * speed
	
	if is_instance_valid(player):
		nav_agent.target_position = player.global_position
		velocity = velocity.move_toward(new_velocity, .25)
		move_and_slide()
	else:
		nav_agent.navigation_finished

func update_taget_location(target_location):
	nav_agent.set_taget_location(target_location)

func _on_navigation_agent_3d_target_reached():
	player.queue_free()
