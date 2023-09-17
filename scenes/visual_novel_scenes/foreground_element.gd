extends Node2D

enum movements
{
	NO_MOVEMENT,
	LINEAR_MOVEMENT,
	SMOOTH_MOVEMENT
}
var target_position = Vector2.ZERO
var velocity = 0 # number of pixels per second to move during linear movement
var halfway_clock = 0 # clock ticking down half the duration for smooth mvmt
var increase_factor = 0 # factor by which velocity is increased per second
# during smooth mvmt
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
			movement_mode = movements.NO_MOVEMENT
	elif movement_mode == movements.SMOOTH_MOVEMENT:
		if halfway_clock > 0:
			velocity += increase_factor * delta
			halfway_clock -= delta
		else:
			velocity -= delta
		position += (target_position - position).normalized() * velocity * delta
		if (target_position - position).length() <= epsilon:
			movement_mode = movements.NO_MOVEMENT

func set_linear_movement(target:Vector2, duration:float):
	target_position = target
	velocity = (target_position - position) / duration
	movement_mode = movements.LINEAR_MOVEMENT

func set_smooth_movement(target:Vector2, duration:float):
	velocity = 0
	target_position = target
	increase_factor = (4 * (target_position - position).length()) / (duration**2)
	halfway_clock = duration / 2
	
