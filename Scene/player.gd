extends CharacterBody2D
var speed = 5000
var gravity_constant = 100

func _physics_process(delta):
	jump()
	gravity()

func jump():
	if Input.is_action_just_pressed("ui_up"):
		velocity = Vector2(0,-1) * speed
	else:
		velocity = Vector2(0,-1) * 0
	
	move_and_slide()
	
func gravity():
	velocity = Vector2(0,1) * gravity_constant	
	move_and_slide()


	
