extends CharacterBody2D
var speed = 300
var gravity_constant = 100
var JUMP = -3000

func _physics_process(delta):
	jump(delta)

func jump(delta):
	var collision = move_and_collide(velocity * delta)

	if Input.is_action_just_pressed("ui_up"):
		velocity.y = JUMP
	else:
		gravity(delta)
		
func gravity(delta):
	velocity.y = gravity_constant	
	move_and_collide(velocity*delta)


	
