extends Node2D
var pipe_node  = preload("res://Scene/pipelines.tscn")
var screen_max_height = DisplayServer.window_get_size()

func _ready():
	spawn_double_pipes(500)		

func _physics_process(delta):
	pass

#Create a pipeline, allowing to specify the size and location.
func spawn_pipes(x_size, y_size, x_position, y_position):
	var pipe = pipe_node.instantiate()
	pipe.create_pipe(x_size, y_size)
	pipe.position = Vector2(x_position, y_position)
	add_child(pipe)
	pipe.add_to_group("pipes")
	
#Create a pair of pipeline, from the lower pipeline to the higher one.
func spawn_double_pipes(pipe_location):
	var random_height_size = randi() % 550 + 50
	var gap = 150
	var bottom_size = (screen_max_height.y - random_height_size) - gap
	var bottom_height_position = screen_max_height.y - bottom_size
	var pipe_width = 100
		
	spawn_pipes(pipe_width, random_height_size, pipe_location, 0)
	spawn_pipes(pipe_width, bottom_size, pipe_location, bottom_height_position)
	
	################
	##Testing code##
	################
	

	##How to create collision shape in code https://www.reddit.com/r/godot/comments/p7tc8y/how_to_spawn_a_area_2d_with_code/
#
	#var area2d = Area2D.new()
	#var area2dCollision =  CollisionShape2D.new()
	#var area2dshape = RectangleShape2D.new()
	#area2dshape.size =Vector2(pipe_width,gap)
	#area2dCollision.shape = area2dshape
	#add_child(area2d)
	#area2d.add_child(area2dCollision)
	#area2d.position = Vector2(pipe_location+(pipe_width/2), bottom_height_position-pipe_width)	
