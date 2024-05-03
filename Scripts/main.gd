extends Node3D

@onready var player = $Player

func _physics_process(delta):
	get_tree().call_group("Inimigos", "update_target_location", player.global_transform.origin)
