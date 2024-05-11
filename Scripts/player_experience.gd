extends Control

@onready var xp_bar = $ProgressBar

func _process(delta):
	if StatusGlobal.seconds % 10 == 0:
		xp_bar.value = StatusGlobal.player_xp
		print(StatusGlobal.player_xp)
