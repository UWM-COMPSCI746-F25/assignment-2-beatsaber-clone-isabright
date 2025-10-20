extends XRController3D

var active = true

func _on_button_pressed(name: String):
	print("Button pressed:", name)
	if name == "select_button":
		print("right a button pressed")
		
		if active == true:
			$"Node3D/Area3D/RightCyllinder".height = 0
			$"Node3D/Area3D/RightCollision".disabled = true
			active = !active
		else:
			$"Node3D/Area3D/RightCyllinder".height = 1
			$"Node3D/Area3D/RightCollision".disabled = false
			active = !active
