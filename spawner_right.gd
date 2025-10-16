extends Node3D

@onready var left_box = load("res://scenes/right_box.tscn")

var time_accum = 0.0
var next_time = randf_range(0.5, 2.0)

func _process(delta):
	time_accum += delta
	if time_accum >= next_time:
		time_accum = 0.0
		next_time = randf_range(1.0, 5.0)
		var instance = left_box.instantiate()
		add_child(instance)
