extends Node3D

const FLOORS = preload("res://floors.tscn")

var floors_scene = FLOORS.instantiate()
var height_tracker = 0


func add_new_floor():
	add_child(floors_scene)
	floors_scene.set_global_position(Vector3(0,0.5 + height_tracker,0))
	height_tracker += 0.5
	
	
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
