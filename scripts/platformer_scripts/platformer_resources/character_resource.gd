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
enum Movement_Levels {
	LOW,
	MEDIUM,
	HIGHT,
}


@export var base_health: float
## Determines what gap width can the character jump over.
## Only one value should be used.
@export var base_speed: Array[Movement_Levels]
## Determines what obstacle height can the character jump over.
## Only one value should be used.
@export var base_jump_height: Array[Movement_Levels]
## Determines what skills does the character have.
## Multiple values can be used.
@export var skills : Array[Skills]
@export var sprite: Sprite2D
