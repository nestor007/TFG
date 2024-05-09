extends Control


func _ready():
	$AnimationPlayer.play("RESET")
func resume():
	print("resume")
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
func pause():
	print("pause")
	get_tree().paused = true
	$AnimationPlayer.play("blur")
func testEsc() -> void:
	if Input.is_action_just_pressed("esc") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused == true:
		resume()

func _process(_delta):
	testEsc()

func _on_resume_pressed():
	resume()


func _on_menu_pressed():
	AudioManagerScene.play_sfx("")
	get_tree().paused = false
	get_tree().change_scene_to_file("res://src/scenes/menu.tscn")


func _on_quit_pressed():
	get_tree().quit()
