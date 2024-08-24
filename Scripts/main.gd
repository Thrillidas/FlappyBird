extends Node2D
var pipe_node  = preload("res://Scene/pipelines.tscn")
var screen_max_height = DisplayServer.window_get_size()

func _ready():
	
	spawn_pipes(100, randi()%500+50, 500, 0)
	#spawn_pipes(100, 150, 500, 618)
	#spawn_double_pipes(500)
	#spawn_double_pipes(300)
		
#Create a pipeline, allowing to specify the size and location.
func spawn_pipes(x_size, y_size, x_position, y_position):
	var pipe = pipe_node.instantiate()
	pipe.create_pipe(x_size, y_size)
	pipe.position = Vector2(x_position, y_position)
	add_child(pipe)
	
#Create a pair of pipeline, from the lower pipeline to the higher one.
func spawn_double_pipes(pipe_location):
	var random_height_size = randi() % 668 + 50
	var gap = 100
	var bottom_size = (screen_max_height.y - random_height_size) - gap
	var bottom_height_position = screen_max_height.y - bottom_size
	var pipe_width = 100
	
	spawn_pipes(pipe_width, random_height_size, pipe_location, 0)
	spawn_pipes(pipe_width, bottom_size, pipe_location, bottom_height_position)

	
