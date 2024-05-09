extends Node

func play_music(sound: String) -> void:
	if sound != "":
		$music.stream_paused = false
		var audio = load(sound)
		$music.set_stream(audio)
		$music.play()
	else:
		$music.stream_paused = true

	
func play_sfx(sound: String) -> void:
	if sound != "":
		$sfx.stream_paused = false
		var audio = load(sound)
		$sfx.set_stream(audio)
		$sfx.play()
	else:
		$sfx.stream_paused = true
