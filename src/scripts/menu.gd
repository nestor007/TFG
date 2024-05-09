extends Control

func _ready():
	AudioManagerScene.play_music("res://src/sounds/music.mp3")

func _on_play_pressed():
	get_tree().change_scene_to_file("res://src/scenes/world.tscn")

func _on_play_vr_mode_pressed():
	get_tree().change_scene_to_file("res://src/scenes/worldVR.tscn")

func _on_options_pressed():
	$MarginContainer.visible = !$MarginContainer.visible
	$Panel.visible = !$Panel.visible

func _on_quit_pressed():
	get_tree().quit()

