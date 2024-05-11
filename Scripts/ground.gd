extends Node3D
var floor_size = Vector2(40, 40)  # Tamanho do chão
var max_coins = 10  # Número máximo de moedas
var num_coins = 0  # Número atual de moedas
var last_generation_time = 0  # Último tempo em que uma moeda foi gerada

func _process(delta):
	if num_coins < max_coins and StatusGlobal.seconds != last_generation_time and StatusGlobal.seconds % 10 == 0:
		var position = Vector3(
				randf_range(-floor_size.x/2, floor_size.x/2),
				1,  # Altura da moeda acima do chão
				randf_range(-floor_size.y/2, floor_size.y/2))
				
		var instance = preload("res://Scenes/coin.tscn").instantiate()
		add_child(instance)
		
		var global_transform = Transform3D.IDENTITY
		global_transform.origin = position
		instance.set_global_transform(global_transform)
		
		num_coins += 1
		last_generation_time = StatusGlobal.seconds
