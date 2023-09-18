extends Node2D


var sprite: Sprite2D

func _ready():
	sprite = get_parent().character.sprite
	get_child(0).set_texture(sprite)

