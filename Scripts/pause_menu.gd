extends CanvasLayer

@export var player : CharacterBody3D
@export var timer: Control

@onready var btn_resume = $button_holder/resume

func _ready():
	visible = false

func _unhandled_input(event):
	if event.is_action_pressed("config"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		visible = true
		get_tree().paused = true
	

func _on_resume_pressed():
	get_tree().paused = false
	visible = false
	btn_resume.grab_focus()
	

func _on_restart_pressed():
	get_tree().paused = false
	StatusGlobal.player_coin = 0
	StatusGlobal.seconds = 0
	StatusGlobal.enemy_speed = 2
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

func _on_main_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _on_quit_pressed():
	get_tree().quit()






