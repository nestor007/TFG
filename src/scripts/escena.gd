extends Node3D
class_name Escena

signal site_interacted(scene:String)

func _on_ring_tp_ring_interacted(scene: String):
	site_interacted.emit(scene)

func _process(_delta):
	textToSpeech()

func textToSpeech():
	if Input.is_action_just_pressed("Read"):
		if $infoButton/Label3D.visible:
			AudioManagerScene.play_voices("res://src/sounds/label3d1.mp3")
		elif $infoButton2/Label3D2.visible:
			AudioManagerScene.play_voices("res://src/sounds/label3d2.mp3")
		elif $infoButton3/Label3D3.visible:
			AudioManagerScene.play_voices("res://src/sounds/label3d3.mp3")


func _voiced_activated(event : XRToolsPointerEvent):
	var type := event.event_type
	if type == XRToolsPointerEvent.Type.PRESSED:
		if $Sprite3D.visible:
			AudioManagerScene.play_voices("res://src/sounds/texto1.mp3")


func _cerrar_sprite3D(event : XRToolsPointerEvent):
	var type := event.event_type
	if type == XRToolsPointerEvent.Type.PRESSED:
		$Sprite3D.visible = false
		$infoButton.visible = true
