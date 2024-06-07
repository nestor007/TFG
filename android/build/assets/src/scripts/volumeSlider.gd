extends HBoxContainer

@export var bus_name: String
var button_disable: bool = false

func _ready():
	$volume.asocia(bus_name)
	
func _on_mute_pressed():
	var image: Resource = null
	if !button_disable:
		image = load("res://src/images/sound_off_inv.png")
		$volume.value = 0
	else:
		image = load("res://src/images/sound_off.png")
		print($volume.volume_value)
		$volume.value = $volume.volume_value
	
	$Mute.texture_normal = image
	button_disable = !button_disable
func _on_volume_value_changed(_value):
	button_disable = false
	var image: Resource = load("res://src/images/sound_off.png")
	$Mute.texture_normal = image
