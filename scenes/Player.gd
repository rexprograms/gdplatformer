extends KinematicBody2D

var velocity = Vector2.ZERO
var gravity = 500
var maxHorizontalSpeed = 100
var jumpSpeed = 150

func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_just_pressed("jump") && velocity.y==0:
		velocity.y = -300
	
func _physics_process(delta):
	var moveVector = Vector2.ZERO
	moveVector.x = (Input.get_action_strength("move_right") - Input.get_action_strength("move_left"))
	moveVector.y = -1 if Input.is_action_just_pressed("jump") && velocity.y < 50 else 0
	
	velocity.x = moveVector.x * maxHorizontalSpeed
	velocity.y = velocity.y + moveVector.y * jumpSpeed
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
