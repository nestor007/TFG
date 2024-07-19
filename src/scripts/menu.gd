extends Control

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


func _ejecute_sfx_sound():
	AudioManagerScene.play_sfx("res://src/sounds/boton.wav")
