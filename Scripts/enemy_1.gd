extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# This prints to the terminal (the 'Output')
	print("Enemy Instantiated")
	
	
	# this variable is used to get a random number
	# to use it, type 'rng' followed by a '.' to see all your options
	var rng := RandomNumberGenerator.new()
	
	
	# this gets the viewport width (can be changed in Project > Project Settings)
	var width = get_viewport().get_visible_rect().size[0] 
	
	
	# generate two random numbers, x and y
	# rng.randi_range() allows you to generate a random number between two numbers
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range (-150, -50) 
	
	
	# sets the enemy's position to a Vector2(x,y), basically a co-ordinate
	# set the x and y co-ordinates to our randomly generated variables
	position = Vector2(random_x, random_y)


# func _process() is called every frame. 'delta' is the elapsed time since the previous frame.
	# delta is used for making movement and time-based operations
	# consistent across different frame rates. (https://www.dragonflydb.io/faq/godot-when-to-use-delta)
func _process(delta: float) -> void:
	# ----- ACTIVITY CODE GOES HERE ----- 
	
	
	# Enemy movement:
	position += Vector2(0, 1.0) * 200 * delta

func _on_body_entered(_body: Node2D) -> void:
	print("Enemy Destroyed")
	queue_free()
	
