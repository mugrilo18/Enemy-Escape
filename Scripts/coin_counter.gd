extends Control

@export var coin: Node3D
@onready var counter = $background/coin_icon/counter

func _ready():
	StatusGlobal.player_coin = StatusGlobal.player_coin - 1
	StatusGlobal.player_xp = StatusGlobal.player_xp - 1

func _process(delta):
	if is_instance_valid(coin):
		pass
	else:
		counter.text = str(StatusGlobal.player_coin)
