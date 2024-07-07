extends VBoxContainer


signal zoneSelected(scene:String)

@export_group("zoneMap")
@export var imageZone: CompressedTexture2D
@export_subgroup("zones")
@export_file("*.tscn") var zone1: String
@export_file("*.tscn") var zone2: String
@export_file("*.tscn") var zone3: String
@export_file("*.tscn") var zone4: String
@export_file("*.tscn") var zone5: String
@export_file("*.tscn") var zone6: String
@export_file("*.tscn") var zone7: String


func _ready():
	$TextureRect.texture = imageZone
	

func _on_zone_1_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	SceneManager.scenePath = zone1
	get_tree().change_scene_to_file("res://src/scenes/worldVR.tscn")

func _on_zone_2_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	SceneManager.scenePath = zone2
	get_tree().change_scene_to_file("res://src/scenes/worldVR.tscn")


func _on_zone_3_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	SceneManager.scenePath = zone3
	get_tree().change_scene_to_file("res://src/scenes/worldVR.tscn")


func _on_zone_4_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	SceneManager.scenePath = zone4
	get_tree().change_scene_to_file("res://src/scenes/worldVR.tscn")



func _on_zone_5_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	SceneManager.scenePath = zone5
	get_tree().change_scene_to_file("res://src/scenes/worldVR.tscn")


func _on_zone_6_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	SceneManager.scenePath = zone6
	get_tree().change_scene_to_file("res://src/scenes/worldVR.tscn")


func _on_zone_7_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	SceneManager.scenePath = zone7
	get_tree().change_scene_to_file("res://src/scenes/worldVR.tscn")
