class_name ScenePopupButton
extends Button
## Adds basic popup functionality to any button node. 
## Add script to button node, and place popup scene in packed_popup_scene in the Godot Node Inspector.
## Have Scene assign it's own position in it's _ready function.

@export var packed_popup_scene: PackedScene

var popup_scene: Control

func _ready() -> void:
	if not is_connected("pressed", _on_pressed):
		var _err: int = pressed.connect(_on_pressed)


func _on_pressed() -> void:
	self.popup_scene = packed_popup_scene.instantiate()
	add_child(popup_scene)
