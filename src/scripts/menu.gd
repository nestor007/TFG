extends Control

func _ready():
	AudioManagerScene.play_music("res://src/sounds/music.mp3")

func _on_play_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	get_tree().change_scene_to_file("res://src/scenes/worldVR.tscn")

func _on_select_map_pressed():
	$VBoxContainer.visible = false
	$MarginContainer3.visible = true
	
func _on_options_pressed():
	$VBoxContainer.visible = false
	$Panel.visible = true
	

func _on_back_pressed():
	$VBoxContainer.visible = true
	$Panel.visible = false
	

func _on_backMap_pressed():
	$VBoxContainer.visible = true
	$MarginContainer3.visible = false
	
func _on_quit_pressed():
	get_tree().quit()




