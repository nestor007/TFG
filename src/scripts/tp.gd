extends Node3D

@export_file var scene:String
signal tpRing_interacted(scene:String)

func _init():
	var rotacion: AnimationPlayer = $rotacion
	#rotacion.play("rotacion")

func _on_static_body_3d_input_event(_camera, event, _position, _normal, _shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			tpRing_interacted.emit(scene)
