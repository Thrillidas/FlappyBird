extends CharacterBody2D
@onready var pipeline_sprite = $PipelineSprite
	
func _physics_process(delta):
	movement(delta)
	
func create_pipe(x_size, y_size):
	$PipelineSprite.size = Vector2(x_size,y_size)
	
func movement(delta):
	velocity.x = -100
	move_and_collide(velocity*delta)

	

	
