extends CanvasLayer

@export var player : CharacterBody3D

func _ready():
	visible = false

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		visible = true
		get_tree().paused = true

func _on_resume_pressed():
	visible = false
	get_tree().paused = false

func _on_quit_pressed():
	get_tree().quit()
