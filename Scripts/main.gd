extends Node3D

#Player
@onready var player = $Player

func _process(delta):
	if is_instance_valid(player):
		Input.mouse_mode = Input.MOUSE_MODE_HIDDEN
		get_tree().call_group("Inimigos", "update_target_location", player.global_transform.origin)
	else:
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _on_limit_fall_body_entered(body):
	if body.is_in_group("player"):
		player.queue_free()

