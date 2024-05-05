extends CanvasLayer

@export var player : CharacterBody3D

@onready var resume_btn = $button_holder/resume

func _ready():
	visible = false

func _unhandled_input(event):
	if event.is_action_pressed("config"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		visible = true
		get_tree().paused = true
		resume_btn.grab_focus()
	

func _on_resume_pressed():
	visible = false
	get_tree().paused = false

func _on_quit_pressed():
	get_tree().quit()
