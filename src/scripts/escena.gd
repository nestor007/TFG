extends Node3D
class_name Escena

signal site_interacted(scene:String)

func _on_ring_tp_ring_interacted(scene: String):
	site_interacted.emit(scene)

