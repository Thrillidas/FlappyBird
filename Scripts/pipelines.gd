extends StaticBody2D
@onready var pipeline_sprite = $PipelineSprite

func _ready():
	grow()
	
func _physics_process(delta):
	pass
	
func grow():
	var random_AxisY = randi()%-500 + 50
	$PipelineSprite.size = Vector2(50,random_AxisY)
	#print(random_AxisY)
	
