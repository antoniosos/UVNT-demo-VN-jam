extends CharacterBody2D
## Object to which you just import the character
## you want to play as


@export var character: CharacterResource

# character specific stats
@onready var health := character.base_health
@onready var speed := character.base_speed
@onready var jump_height := character.base_jump_height
@onready var skills := character.skills
# stats for all characters
const GRAVITY: Vector2 = Vector2(0,3000)
var friction: float = 1.1

func _physics_process(delta):
	velocity.x = velocity.x + 1
	move_and_slide()
