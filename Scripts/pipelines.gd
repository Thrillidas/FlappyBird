extends CharacterBody2D
@onready var pipeline_sprite = $PipelineSprite
@onready var collision_pipe = $CollisionPipe

func _physics_process(delta):
	movement()
	pass
	
func create_pipe(x_size, y_size):
	$PipelineSprite.size = Vector2(x_size,y_size)
	$CollisionPipe.shape.size = Vector2(x_size,y_size)
	$CollisionPipe.position = Vector2(x_size/2,y_size/2)

	
func movement():
	velocity.x = -100
	move_and_slide()

	

	
