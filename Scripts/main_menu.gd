extends Control


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

func _on_store_pressed():
	get_tree().change_scene_to_file("res://Scenes/store.tscn")

func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scenes/options.tscn")


func _on_exit_pressed():
	get_tree().quit()
