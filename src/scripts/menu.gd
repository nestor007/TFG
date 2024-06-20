extends Control

func _ready():
	AudioManagerScene.play_music("res://src/sounds/music.mp3")

func _on_play_pressed():
	AudioManagerScene.play_ambient_sfx("res://src/sounds/ambiental 1.wav")
	get_tree().change_scene_to_file("res://src/scenes/world.tscn")

func _on_select_map_pressed():
	$principalMenu.visible = false
	$mapSelectorMenu.visible = true
	
func _on_options_pressed():
	$principalMenu.visible = false
	$optionsMenu.visible = true
	

func _on_back_pressed():
	$principalMenu.visible = true
	$mapSelectorMenu.visible = false
	$optionsMenu.visible = false
	

	
func _on_quit_pressed():
	get_tree().quit()




