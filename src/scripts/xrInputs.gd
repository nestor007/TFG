extends XROrigin3D

func _on_xr_controller_3d_l_button_pressed(name):
	$Label3D.text = name
	
	if name == "ax_button":
		%menu.visible = !%menu.visible
		if %menu.visible:
			%menu.enabled = true
		else:
			%menu.enabled = false

func execute_fade_animation():
	$AnimationPlayer.play("fadeInOutVR")
