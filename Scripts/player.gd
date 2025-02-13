# This is the script where the player's code is handled

# To leave a comment, prefix a line with a '#'

# This means we are getting the attributes of a CharacterBody2D 
# (Our 'Player' node is a CharacterBody2D)
extends CharacterBody2D


# func _ready() is called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# func _process() is called every frame. 'delta' is the elapsed time since the previous frame.
	# delta is used for making movement and time-based operations
	# consistent across different frame rates. (https://www.dragonflydb.io/faq/godot-when-to-use-delta)
func _process(delta: float) -> void:
	var direction= Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 300
	move_and_slide()
