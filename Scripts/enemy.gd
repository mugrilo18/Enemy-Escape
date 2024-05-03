extends CharacterBody3D

@onready var nav_agent = $NavigationAgent3D
@export var player: CharacterBody3D

var speed = 5.0

func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_path_position()
	var new_velocity = (next_location - current_location).normalized() * speed
	
	nav_agent.target_position = player.global_position
	
	velocity = new_velocity
	
	move_and_slide()

func update_taget_location(target_location):
	nav_agent.set_taget_location(target_location)
