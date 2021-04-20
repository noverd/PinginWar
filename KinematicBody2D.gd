extends KinematicBody2D
const GRAVITY = 1500
const FLOOR = Vector2(0,-1)
const SPEED = 400
const JUMP = 700
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var velocity = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("d"):
		velocity.x = SPEED
		$pingrun.flip_h = false
	elif Input.is_action_pressed("a"):
		velocity.x = -SPEED
		$pingrun.flip_h = true
	else:
		velocity.x = 0
	
	if Input.is_action_pressed("w") && is_on_floor():
		velocity.y = -JUMP
	
	velocity.y += (GRAVITY * delta)
	velocity = move_and_slide(velocity, FLOOR)
