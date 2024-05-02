extends Node3D
class_name Info

signal info_displayed(scene:Resource)

var positionLabel = Vector3()

func init(texto: String, pos: Vector3):
	
	createLabel(texto, pos)


func _on_button_pressed():
	print("Boton pulsado: ")
	var child = findLabel()
	if child != null:
		print(child.text)
		remove_child(child)
		return
	
	createLabel("Mora", positionLabel)

func createLabel(texto: String, pos: Vector3):
	if texto == "":
		texto = "Soba"
	var label = Label3D.new()
	label.text = texto
	label.set_global_position(pos)
	positionLabel = pos
	add_child(label)
	info_displayed.emit("res://src/scenes/infoButton.tscn")

func findLabel():
	for child in get_children():
		if child is Label3D:
			return child
	return null
	
func findButton():
	for child in get_children():
		if child is Button:
			return child
	return null
