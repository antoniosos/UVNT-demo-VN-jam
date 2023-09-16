extends Node2D

enum movements
{
	NO_MOVEMENT,
	LINEAR_MOVEMENT
}
var target_position = Vector2.ZERO
var velocity = 0 # number of pixels per second to move during linear movement
var movement_mode = movements.NO_MOVEMENT
const epsilon = 0.1 # the minimum distance between two vectors in order to be
# considered equal 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if movement_mode == movements.NO_MOVEMENT:
		pass
	elif movement_mode == movements.LINEAR_MOVEMENT:
		position += (target_position - position).normalized() * velocity * delta
		if (target_position - position).length() <= epsilon:
			movement_mode = movements.NO_MOVEMENT;

func set_linear_movement(target:Vector2, duration:float):
	target_position = target
	velocity = (target_position - position) / duration
	movement_mode = movements.LINEAR_MOVEMENT
