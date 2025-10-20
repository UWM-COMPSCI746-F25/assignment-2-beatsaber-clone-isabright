extends XRController3D


func _on_button_pressed(name: String):
	if name == "trigger_click":
		# Hide the CSGCylinder3D 
		$"Node3D/Area3D/RightCyllinder".height = 0.001
		# Disable CollisionShape3D collision safely
		$"Node3D/Area3D/RightCollision".disabled = true
