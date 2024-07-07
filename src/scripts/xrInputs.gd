extends XROrigin3D

func _on_xr_controller_3d_l_button_pressed(name):
	$Label3D.text = name
	
	if name == "ax_button":
		%menu.visible = !%menu.visible
		%menu.set_collision_layer_value(21, !%menu.get_collision_layer_value(21))
		%menu.set_collision_layer_value(23, !%menu.get_collision_layer_value(23))
	if name == "grip_click":
		$AnimationPlayer.play("fadeInOutVR")

func execute_fade_animation():
	$AnimationPlayer.play("fadeInOutVR")
