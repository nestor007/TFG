extends Control
var volMaster: float = 0
var volMusic: float = 0
var volSFX: float = 0

func _on_master_volume_slider_pressed():
	print("muted")
	var master_volume: HSlider = $"Panel/MarginContainer/VBoxContainer/HBoxContainer/master volume slider"
	if master_volume.editable:
		volMaster = master_volume.value
		master_volume.value = 0
		master_volume.editable = false
	else:
		master_volume.value = volMaster
		master_volume.editable = true
		
func _on_music_volume_slider_pressed():
	var music_volume: HSlider = $"Panel/MarginContainer/VBoxContainer/HBoxContainer2/music volume slider"
	if music_volume.editable:
		volMusic = music_volume.value
		music_volume.value = 0
		music_volume.editable = false
	else:
		music_volume.value = volMusic
		music_volume.editable = true

func _on_sfx_volume_slider_pressed():
	var sfx_volume: HSlider = $"Panel/MarginContainer/VBoxContainer/HBoxContainer3/sfx volume slider"
	if sfx_volume.editable:
		volSFX = sfx_volume.value
		sfx_volume.value = 0
		sfx_volume.editable = false
	else:
		sfx_volume.value = volSFX
		sfx_volume.editable = true
