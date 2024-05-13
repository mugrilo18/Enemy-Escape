extends Control

func _on_restart_pressed():
	StatusGlobal.player_coin = 0
	StatusGlobal.seconds = 0
	StatusGlobal.enemy_speed = 2
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _on_quit_pressed():
	get_tree().quit()






