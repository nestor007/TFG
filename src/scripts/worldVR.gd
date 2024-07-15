extends Node3D

var xr_interface: XRInterface

func _ready() -> void:
	$player.execute_fade_animation()
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialized successfully")
		
		# Turn off v-sync!
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		# Change our main viewport to output to the HMD
		get_viewport().use_xr = true
		$player.position += Vector3(1.35,-0.67,0)
	else:
		print("OpenXR not initialized, please check if your headset is connected")
		
	if SceneManager.scenePath != "":
		select_scene(SceneManager.scenePath)

func _on_change_Scene_interacted(scene: String):
	#$AnimationPlayer.play("fundidoNegro")
	$player.execute_fade_animation()
	await get_tree().create_timer(0.5).timeout
	for child in get_children():
		if child is Escena:
			remove_child(child)
	var newChild = load(scene).instantiate()
	add_child(newChild)
	newChild.site_interacted.connect(_on_change_Scene_interacted)

func select_scene(scene: String):
	$player.execute_fade_animation()
	for child in get_children():
		if child is Escena:
			remove_child(child)
	var newChild = load(scene).instantiate()
	add_child(newChild)
	newChild.site_interacted.connect(_on_change_Scene_interacted)
