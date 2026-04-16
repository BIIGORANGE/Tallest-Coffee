extends Node3D
#Camera Gimbal system. CameraGimbal(move x axis) > InnerGimbal(move_y_axis) > Camera3D
#See more here: https://www.youtube.com/watch?v=4NLrfxNt3ps

var rotation_speed = PI / 2
var zoom_speed = 0.6
var zoom = 1.5

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	get_input_keyboard(delta)
	$InnerGimbal.rotation.x = clamp($InnerGimbal.rotation.x,-1.04,0.03)
	zoom = clamp(zoom, 1, 100000)
	scale = lerp(scale, Vector3.ONE * zoom, zoom_speed)
	position.y = clamp(position.y, 1, 100000)
	
	
func get_input_keyboard(delta):
	#rotate CameraGimbal on y axis only
	var y_rotation = 0
	
	if Input.is_action_pressed("cam_left"):
		y_rotation -= 1
	if Input.is_action_pressed("cam_right"):
		y_rotation += 1
	rotate_object_local(Vector3.UP, y_rotation * rotation_speed * delta)
	
	#move CameraGimbal up and down
	if Input.is_action_pressed("cam_pos_up"):
		position.y += 5 * delta
	if Input.is_action_pressed("cam_pos_down"):
		position.y -= 5 * delta
	#rotate InnerGimbal on x axis only
	var x_rotation = 0
		
	if Input.is_action_pressed("cam_down"):
		x_rotation += 1
	if Input.is_action_pressed("cam_up"):
		x_rotation -= 1
	$InnerGimbal.rotate_object_local(Vector3.RIGHT, x_rotation * rotation_speed * delta)
	
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("cam_zoom_in"):
		zoom -= zoom_speed
	if event.is_action_pressed("cam_zoom_out"):
		zoom += zoom_speed
	
	
	
