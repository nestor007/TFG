extends Node3D


@onready var camera = get_node("Camera3D")

var last_x = 0
var last_y = 0

func _process(delta):
	keyboard_controls(delta)
	#check_sensor(delta)

func load_img(res):
	var material = StandardMaterial3D.new()
	material.params_cull_mode = 2
	material.albedo_color = Color( 0.8, 0.8, 0.8, 1 )
	material.albedo_texture = load(res)
	material.metallic_specular = 0.0
	material.roughness = 0.0764706
	material.emission_enabled = true
	material.emission = Color( 0, 0, 0, 1 )
	material.emission_energy = 1.0
	material.emission_operator = 0
	material.emission_on_uv2 = false
	material.emission_texture = load(res)

func check_sensor(delta):
	var acc = Input.get_accelerometer()
	var mag = Input.get_magnetometer()
	var x = abs((mag.x * 5))
	var y = acc.z/5
	camera.rotation.y = x * delta
	camera.rotation.x += y * delta
	camera.rotation.x = clamp(camera.rotation.x,-1.5,1.5)
	update(x,y,delta)
		
func keyboard_controls(delta):
	var LEFT = Input.is_action_pressed("ui_left")
	var RIGHT = Input.is_action_pressed("ui_right")
	var UP = Input.is_action_pressed("ui_up")
	var DOWN = Input.is_action_pressed("ui_down")

	var x = int(LEFT) + -int(RIGHT)
	var y = int(UP) + -int(DOWN)
	update(x,y,delta)
	
func update(x,y,delta):
	camera.rotation.y += x * delta
	camera.rotation.x += y * delta
	camera.rotation.x = clamp(camera.rotation.x,-1.5,1.5)
	


func _on_change_Scene_interacted(scene):
	for child in get_children():
		print(child)
		if child is Escena:
			remove_child(child)
	var newChild = load(scene).instantiate()
	add_child(newChild)
	newChild.site_interacted.connect(_on_change_Scene_interacted)
