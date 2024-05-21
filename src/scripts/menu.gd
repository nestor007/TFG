extends Control

func _ready():
	AudioManagerScene.play_music("res://src/sounds/music.mp3")

func _on_play_pressed():
	get_tree().change_scene_to_file("res://src/scenes/world.tscn")

func _on_select_map_pressed():
	get_tree().change_scene_to_file("res://src/scenes/map_selector.tscn")

func _on_options_pressed():
	$CanvasLayer/VBoxContainer.visible = !$CanvasLayer/VBoxContainer.visible
	$CanvasLayer/Panel.visible = !$CanvasLayer/Panel.visible

func _on_quit_pressed():
	get_tree().quit()

