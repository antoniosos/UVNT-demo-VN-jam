class_name CharacterResource
extends Resource
## Template for different character resources

# Skills which characters can have, each character can have multiple
enum Skills {
	TMP,
	TMP2,
	TMP3,
	TMP4,
}

@export var base_health: float
@export var base_speed: float
@export var base_jump_hight: float
@export var skills : Array[Skills]
@export var sprite: Sprite2D
