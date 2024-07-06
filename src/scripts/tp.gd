extends Node3D

@export_file var scene:String
signal tpRing_interacted(scene:String)


func _on_static_body_3d_input_event(_camera, event, _position, _normal, _shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			tpRing_interacted.emit(scene)


func _on_static_body_3d_pointer_event(event : XRToolsPointerEvent):
	var type := event.event_type
	if type == XRToolsPointerEvent.Type.PRESSED:
		tpRing_interacted.emit(scene)
