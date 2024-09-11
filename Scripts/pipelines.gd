extends Area2D
@onready var pipeline_sprite = $PipelineSprite
@onready var collision_pipe = $CollisionPipe

var speed = 100

func _physics_process(delta):
	movement(delta)

func create_pipe(x_size, y_size):
	$PipelineSprite.size = Vector2(x_size,y_size)
	$CollisionPipe.shape.size = Vector2(x_size,y_size)
	$CollisionPipe.position = Vector2(x_size/2,y_size/2)
	
func movement(delta):
	position.x += -speed * delta

func stop():
	speed = 0
	
func _on_body_entered(body):
	get_tree().call_group("pipes", "stop")
	
