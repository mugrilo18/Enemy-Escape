extends Node3D

func _on_area_3d_body_entered(body):
	if body.is_in_group('player'):
		StatusGlobal.player_coin += 1
		print(StatusGlobal.player_coin)
		get_tree().queue_delete($".")

	pass # Replace with function body.