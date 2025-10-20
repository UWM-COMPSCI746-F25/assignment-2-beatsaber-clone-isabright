extends CSGBox3D

@export var speed: float = 2.0

func _process(delta):
	position.z -= speed * delta
