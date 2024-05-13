extends Control


func _on_characters_pressed():
	get_tree().change_scene_to_file("res://Scenes/character_store.tscn")

func _on_upgrades_pressed():
	get_tree().change_scene_to_file("res://Scenes/upgrade_store.tscn")

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
