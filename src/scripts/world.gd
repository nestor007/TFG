extends Node3D


@onready var camera = get_node("Camera3D")
var last_x = 0
var last_y = 0
var interface: XRInterface


func _ready() -> void:
	$AnimationPlayer.play("RESET")
	interface = XRServer.find_interface("OpenXR")
	if interface and interface.is_initialized():
		print("va")
		get_viewport().use_xr = true
		
	if SceneManager.scenePath != "":
		select_scene(SceneManager.scenePath)

func _process(delta):
	keyboard_controls(delta)
	#check_sensor(delta)



func check_sensor(delta):
	var acc = Input.get_accelerometer()
	var mag = Input.get_magnetometer()
	var x = abs((mag.x * 5))
	var y = acc.z / 5
	camera.rotation.y = x * delta
	camera.rotation.x += y * delta
	camera.rotation.x = clamp(camera.rotation.x, -1.5, 1.5)
	update(x, y, delta)

func keyboard_controls(delta):
	var LEFT = Input.is_action_pressed("ui_left")
	var RIGHT = Input.is_action_pressed("ui_right")
	var UP = Input.is_action_pressed("ui_up")
	var DOWN = Input.is_action_pressed("ui_down")
	
	var LEFTC = Input.is_action_pressed("move_camera_left")
	var RIGHTC = Input.is_action_pressed("move_camera_right")
	var UPC = Input.is_action_pressed("move_camera_up")
	var DOWNC = Input.is_action_pressed("move_camera_down")

	var x = int(LEFT) - int(RIGHT)
	var y = int(UP) - int(DOWN)
	
	var x2 = int(LEFTC) - int(RIGHTC)
	var y2 = int(UPC) - int(DOWNC)
	update(x, y, delta)
	update2(x2, y2, delta)
	
func update(x, y, delta):
	camera.rotation.y += x * delta
	camera.rotation.x += y * delta
	camera.rotation.x = clamp(camera.rotation.x, -1.5, 1.5)

func update2(x, y, delta):
	var forward = -camera.global_transform.basis.z.normalized()
	var right = -camera.global_transform.basis.x.normalized()

	var forward_displacement = forward * y * delta
	var right_displacement = right * x * delta

	camera.global_translate(forward_displacement + right_displacement)


func _on_change_Scene_interacted(scene: String):
	$AnimationPlayer.play("fundidoNegro")
	await get_tree().create_timer(1.3).timeout
	for child in get_children():
		if child is Escena:
			remove_child(child)
	var newChild = load(scene).instantiate()
	add_child(newChild)
	newChild.site_interacted.connect(_on_change_Scene_interacted)

func select_scene(scene: String):
	for child in get_children():
		if child is Escena:
			remove_child(child)
	var newChild = load(scene).instantiate()
	add_child(newChild)
	newChild.site_interacted.connect(_on_change_Scene_interacted)
