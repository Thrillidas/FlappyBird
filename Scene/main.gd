extends Node2D
var pipe_node = preload("res://Scene/pipelines.tscn")

func _ready():
	spawn_pipes()
	spawn_pipes()
	spawn_pipes()
	

func spawn_pipes():
	var pipe = pipe_node.instantiate()
	pipe.position
	add_child(pipe)
	
