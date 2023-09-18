extends CharacterBody2D
## Object to which you just import the character
## you want to play as


@export var character: CharacterResource

## please don't change since you can't be a constant 🥲
@onready var health = character.base_health
@onready var speed = character.base_speed
@onready var jump_height = character.base_jump_hight
