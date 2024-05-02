extends Escena

func _init():
	super._init()
	var textos = ["prueba1", "prueba2", "prueba3"]
	infoButtonsManager(textos)

func _on_button_pressed():
	site_interacted.emit("res://src/scenes/EscenaCielo.tscn")

func infoButtonsManager(texto: Array):
	var cont = 0
	var cont2 = 0
	for info in texto:
		var newChild = load("res://src/scenes/infoButton.tscn").instantiate()
		if newChild is Info:
			var posLabel = Vector3(0,-0.27,-0.26)
			var posButton = Vector2(380,2)
			posLabel.y += cont
			posButton.x += cont2
			cont += 0.27
			cont2 += 150
			newChild.init(info, posLabel)
			newChild.findButton().set_global_position(posButton)
		add_child(newChild)
		newChild.info_displayed.connect(_on_generate_info)
	
func _on_generate_info(scene):
	"""
	for child in get_children():
		if child is Info:
			remove_child(child)
	
	var newChild = load(scene).instantiate()
	add_child(newChild)
	newChild.info_displayed.connect(_on_generate_info)
	"""
