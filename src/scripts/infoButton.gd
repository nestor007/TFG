extends Node3D
class_name Info

@export var sprite: Sprite3D = null

func toggle_label():
	sprite.visible = !sprite.visible

func _on_click_in_3DObject(_camera, event, _position, _normal, _shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			print("click")
			toggle_label()
