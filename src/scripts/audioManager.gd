extends Node

var voice_finished: bool = true
var music_playing: String
var ambientsfx_playing: String

func _ready():
	play_music("res://src/sounds/musicaEscenario.wav")
	play_ambient_sfx("res://src/sounds/ambiental.mp3")

func play_music(sound: String) -> void:
	if sound != "":
		music_playing = sound
		$music.stream_paused = false
		var audio = load(sound)
		$music.set_stream(audio)
		$music.play()
	else:
		$music.stream_paused = true

func play_ambient_sfx(sound: String) -> void:
	if sound != "":
		ambientsfx_playing = sound
		$ambientSFX.stream_paused = false
		var audio = load(sound)
		$ambientSFX.set_stream(audio)
		$ambientSFX.play()
	else:
		$ambientSFX.stream_paused = true
		
func play_sfx(sound: String) -> void:
	if sound != "":
		$SFX.stream_paused = false
		var audio = load(sound)
		$SFX.set_stream(audio)
		$SFX.play()
	else:
		$SFX.stream_paused = true

func play_voices(sound: String) -> void:
	if sound != "":
		if voice_finished:
			voice_finished = false
			$Voices.stream_paused = false
			var audio = load(sound)
			$Voices.set_stream(audio)
			$Voices.play()
	else:
		$Voices.stream_paused = true

func _on_voices_finished():
	voice_finished = true


func _on_music_finished():
	var audio = load(music_playing)
	$music.set_stream(audio)
	$music.play()


func _on_ambient_sfx_finished():
	var audio = load(ambientsfx_playing)
	$ambientSFX.set_stream(audio)
	$ambientSFX.play()
