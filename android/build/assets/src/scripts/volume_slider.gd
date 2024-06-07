extends HSlider

var bus_index: int
var volume_value: float
func _on_value_changed(value: float) -> void:
	if value != 0:
		volume_value = value
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(value))

func asocia(bus_name: String):
	bus_index = AudioServer.get_bus_index(bus_name)
	value = db_to_linear( AudioServer.get_bus_volume_db(bus_index))
	volume_value = value
