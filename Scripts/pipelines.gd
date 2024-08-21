extends CharacterBody2D
@onready var pipeline_sprite = $PipelineSprite

func _physics_process(delta):
	pass
	#movement()
	
func create_pipe(x_size, y_size,x_position,y_position):
	$PipelineSprite.size.x = x_size
	$PipelineSprite.size.y = y_size
	
	$PipelineSprite.position.x = x_position
	$PipelineSprite.position.y = y_position


func resize_pipe(x_size, y_size):
	$PipelineSprite.size.x = x_size
	$PipelineSprite.size.y = y_size

func movement():
	velocity.x = -100
	move_and_slide()
	
	

	
