extends Control

@onready var timer = $Timer
@onready var timerStatus = $text_holder/timer_status


func _ready():
	timer.start()

func _on_timer_timeout():
	StatusGlobal.seconds += 1
	StatusGlobal.minutes = StatusGlobal.seconds / 60
	
	var secondText = StatusGlobal.seconds % 60
	var minuteText = StatusGlobal.minutes
	
	if secondText < 10:
		secondText = "0" + str(secondText)
	
	if minuteText < 10:
		minuteText = "0" + str(minuteText)
	
	timerStatus.text = str("%s:%s" % [minuteText, secondText])
	timer.start()
	
	#Enemy
	if StatusGlobal.seconds % 20 == 0:
		StatusGlobal.enemy_speed = StatusGlobal.enemy_speed + .25
		
	
	#Player
	if StatusGlobal.seconds % StatusGlobal.time_xp_player == 0:
		StatusGlobal.player_xp = StatusGlobal.player_xp + 1
