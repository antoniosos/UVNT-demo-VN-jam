class_name CharacterResource
extends Resource
## Template for different character resources


## numbers are just placeholders, I don't yet know what value they should be
## There should be 3 types of obstacles
enum Speed {
	INJURED = 0,	## Character is very slow (should be used only for cinematic parts of gameplay)
	SLOW = 200,
	MEDIUM = 400,
	FAST = 600
}

## numbers are just placeholders, I don't yet know what value they should be
## There should be 3 types of obstacles
enum Jump_Height {
	INJURED = 0,	## Character can't jump (should be used only for cinematic parts of gameplay)
	LOW = 200,	## Character can jump only over the lowest obstacle
	MEDIUM = 400,	## Character can jump over two heights of obstacles
	HIGH = 600	## Character can jump over every obstacle
}

## Skills which characters can have, each character can have multiple (this system won't work, its gonna get replaced)
enum Skills {
	TMP,
	TMP2,
	TMP3,
	TMP4,
}

@export var base_health: float ## Characters base health (not maximum health)
@export var base_speed: Speed ## Characters base speed (not maximum speed)
@export var base_jump_height: Jump_Height ## Characters base jump height (not maximum jump height)
@export var skills : Array[Skills] ## skills the character currently has (will likely delete and replace)
@export var sprite: Sprite2D ## Character sprite
