extends Node3D

#signal pose_recentered

# Handle OpenXR pose recentered signal
func _on_openxr_pose_recentered():
	print("emitting centering")
	emit_signal("pose_recentered")
