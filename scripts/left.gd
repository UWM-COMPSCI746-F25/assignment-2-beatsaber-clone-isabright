extends XRController3D
var active = true

func _on_button_pressed(name: String):
	print("Button pressed:", name)
	if name == "select_button":
		print("left x button pressed")
		if active == true:
			$"Node3D/Area3D/LeftCyllinder".height = 0
			$"Node3D/Area3D/LeftCollision".disabled = true
			active = !active
		else:
			$"Node3D/Area3D/LeftCyllinder".height = 1
			$"Node3D/Area3D/LeftCollision".disabled = false
			active = !active
