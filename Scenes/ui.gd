extends Control

@onready var timer = $Timer
@onready var timerStatus = $text_holder/timer_status

@onready var seconds = 0
@onready var minutes = 0

func _ready():
	timer.start()

func _on_timer_timeout():
	seconds += 1
	minutes = seconds / 60
	
	var secondText = seconds % 60
	var minuteText = minutes
	
	if secondText < 10:
		secondText = "0" + str(secondText)
	
	if minuteText < 10:
		minuteText = "0" + str(minuteText)
	
	timerStatus.text = str("%s:%s" % [minuteText, secondText])
	timer.start()
