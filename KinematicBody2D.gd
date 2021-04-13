extends KinematicBody2D
var vectori = Vector2()
export var GRAVITY = 15
export var FLOOR = Vector2(0,-1)
export var SPEED = 100
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	vectori.y += GRAVITY
	if is_on_floor():
		if Input.is_action_pressed("w"):
			vectori.y = -SPEED*10 # Replace 
	if Input.is_action_pressed("a"):
		vectori.x = -SPEED*5
		get_node("pingrun").flip_h = true # Replace with function body.
	elif Input.is_action_pressed("d"):
		vectori.x = SPEED*5
		get_node("pingrun").flip_h = false# Replace with function body.
	else:vectori.x = 0
	move_and_slide(vectori,FLOOR)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
