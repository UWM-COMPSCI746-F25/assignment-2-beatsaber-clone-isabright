extends Node3D

@onready var left_box = load("res://scenes/right_box.tscn")

var time_accum = 0.0
var next_time = randf_range(0.5, 2.0)
var x_rand
var y_rand

func _process(delta):
	time_accum += delta
	if time_accum >= next_time:
		time_accum = 0.0
		next_time = randf_range(1.0, 5.0)
		var instance = left_box.instantiate()
		x_rand = randf_range(-0.5, 0.7)
		y_rand = randf_range(-0.5, 0.7)
		var change = Vector3(x_rand, y_rand, 0)
		instance.global_position += change
		add_child(instance)
