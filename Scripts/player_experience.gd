extends Control

@onready var xp_bar = $ProgressBar

func _process(delta):
	if StatusGlobal.seconds % StatusGlobal.time_xp_player == 0:
		xp_bar.value = StatusGlobal.player_xp
	
	if StatusGlobal.player_xp == xp_bar.max_value:
		StatusGlobal.player_level += 1
		StatusGlobal.player_xp = 0
