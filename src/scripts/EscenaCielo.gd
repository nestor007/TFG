extends Escena


func _on_button_pressed():
	site_interacted.emit("res://src/scenes/EscenaBosque.tscn")
