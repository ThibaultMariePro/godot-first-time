extends Node2D

var Gem = preload("res://Gem/gem.tscn")

func _on_timer_timeout():
	var gemTemp = Gem.instantiate()
	var rng = RandomNumberGenerator.new()
	var ranint = rng.randi_range(10, 400)
	gemTemp.position = Vector2(ranint, 300)
	add_child(gemTemp)
