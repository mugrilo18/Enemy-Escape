extends Node3D

@onready var player = $Player

func _process(delta):
	if player:
		Input.mouse_mode = Input.MOUSE_MODE_HIDDEN
		get_tree().call_group("Inimigos", "update_target_location", player.global_transform.origin)
	else:
		get_tree().change_scene_to_file("res://Scenes/pause_menu.tscn")
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
