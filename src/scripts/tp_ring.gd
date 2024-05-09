extends Node3D

func _ready():
	var rotacion: AnimationPlayer = $rotacion
	rotacion.play("rotacion")
