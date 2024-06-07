extends VBoxContainer


signal zoneSelected(scene:String)

@export_group("zoneMap")
@export var imageZone: CompressedTexture2D
@export_subgroup("zones")
@export_file("*.tscn") var zone1: String
@export_file("*.tscn") var zone2: String
@export_file("*.tscn") var zone3: String
@export_file("*.tscn") var zone4: String


func _ready():
	$TextureRect.texture = imageZone
	

func _on_zone_1_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	get_tree().change_scene_to_file("res://src/scenes/world.tscn")
	#call_deferred("sendZoneToWorld", zone1)


func _on_zone_2_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	get_tree().change_scene_to_file("res://src/scenes/world.tscn")
	#call_deferred("sendZoneToWorld", zone2)


func _on_zone_3_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	get_tree().change_scene_to_file("res://src/scenes/world.tscn")
	#call_deferred("sendZoneToWorld", zone3)


func _on_zone_4_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	get_tree().change_scene_to_file("res://src/scenes/world.tscn")
	#call_deferred("sendZoneToWorld", zone4)
"""
func sendZoneToWorld(scene: String):
	var world: Node = get_tree().current_scene
	if world:
		world.select_scene(scene)
"""
