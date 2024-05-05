extends Node3D
class_name Info

@export var label:Label3D = null

func toggle_label():
	label.visible = !label.visible

func _on_click_in_3DObject(_camera, event, _position, _normal, _shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			print("click")
			toggle_label()
