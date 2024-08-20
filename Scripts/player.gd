extends CharacterBody2D
var speed = 300
var gravity_constant = 100
var JUMP = -3000

func _physics_process(delta):
	jump()

func jump():
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = JUMP
	else:
		gravity()
		
	move_and_slide()
	
func gravity():
	velocity.y = gravity_constant	
	move_and_slide()


	
