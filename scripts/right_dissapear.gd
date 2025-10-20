extends Area3D

func _ready():
	pass

func _on_body_entered(body):
	queue_free()  


func _on_area_entered(area: Area3D) -> void:
	pass # Replace with function body.
