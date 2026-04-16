extends Node3D

var floors = preload("res://floors.tscn")

var height_tracker = 0


func add_new_floor():
	#floors_scene var needed here to instance new floor each time func add_new_floor() is called
	var floors_scene = floors.instantiate()
	add_child(floors_scene)
	floors_scene.set_global_position(Vector3(0,0.5 + height_tracker,0))
	height_tracker += 1

func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
